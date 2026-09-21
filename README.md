# Examy

[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-%5E3.8.0-teal?logo=dart)](https://dart.dev)

Examy is a Flutter exam-taking application where users can sign up and log in, browse subjects,
take timed exams question by question, submit answers for server-side checking, and review scores,
answer-by-answer feedback, and locally stored exam history — plus manage their profile and password.

## Features

- **Authentication** — Splash screen, login and sign-up screens with form validation; session state
  managed by `AuthCubit` with auth-guarded routing (`AuthWrapper` + `go_router` redirects);
  auth token persisted in `flutter_secure_storage` and attached to requests by `AuthInterceptor`; logout.
- **Forgot password flow** — Request a reset code by email, verify the code (with resend support),
  then set a new password; each step has its own cubit, loading/error states.
- **Explore / subjects** — Browse the subjects list with live search filtering, pull up subject
  details, and open the exams available for a subject.
- **Taking an exam** — Exam instructions screen, then a timed question-by-question flow with single-
  and multiple-choice answer selection, next/back navigation, countdown timer with timeout dialog,
  and submit for checking (`questions/check`).
- **Score & answers review** — Score screen (percentage ring, correct/wrong counts, time taken) and
  an answers-review screen mapping selected vs. correct option keys per question.
- **Exam history / Result tab** — Past attempts persisted locally in secure storage, sorted by date,
  groupable/filterable by subject, with per-subject history cards.
- **Profile management** — View profile data, edit profile details (username, names, email, phone),
  and change password (refreshed token is re-saved to secure storage).

## Tech Stack

| Area | Packages |
|---|---|
| Framework | Flutter (Dart SDK `^3.8.0`) |
| State management | `flutter_bloc` (Cubit + freezed states/events) |
| Dependency injection | `get_it` + `injectable` (+ `injectable_generator`) |
| Networking | `dio` + `pretty_dio_logger`, hand-written API clients per feature |
| Local storage | `flutter_secure_storage` (auth token, exam history JSON) |
| Routing | `go_router` (incl. `StatefulShellRoute` bottom-navigation shell) |
| Code generation | `freezed`, `json_serializable`, `injectable_generator` via `build_runner` |
| Fonts / assets | Inter font family, bundled images, `flutter_native_splash`, `flutter_launcher_icons` |
| Utilities | `intl`, `url_launcher`, `cupertino_icons` |
| Testing | `flutter_test` + `mockito` (generated mocks), `flutter_lints` |

Backend: REST API at `https://exam.elevateegy.com/api/v1/` (`auth/*`, `subjects`, `exams`,
`questions`, `questions/check` — see `lib/core/{networking,constants}/api_constants.dart`).

## Architecture

The app follows **Clean Architecture**, with each feature split into three layers:

- **Data** — API clients (Dio), JSON models (`json_serializable`), remote/local data sources, and
  repository implementations. Maps DTOs to domain entities and wraps results in the sealed
  `BaseResponse<T>` (`SuccessResponse` / `ErrorResponse`) type.
- **Domain** — Framework-free business contracts: entities (freezed), repository interfaces, and
  thin use cases (one class per operation, e.g. `LoginUseCase`, `CheckQuestionsUseCase`).
- **Presentation** — Cubits / view models reacting to freezed events and emitting freezed states
  built on a shared `BaseState<T>` (`isLoading`, `data`, `errorMessage`), consumed by screens/widgets.

Shared concerns (networking setup, error handling, DI, routing, storage, theme, validators,
reusable widgets) live in `lib/core/` and `lib/app/`.

## Project Structure

```text
lib/
├── main.dart                  # entry point, DI init, splash preserve/remove
├── exam_app.dart              # root widget (MaterialApp.router + AuthWrapper)
├── app/
│   └── routing/               # AppRoutes, AppRouter (go_router), AppShell bottom nav
├── core/
│   ├── base_response/         # BaseResponse<T>, SuccessResponse, ErrorResponse
│   ├── base_state/            # BaseState<T> (isLoading/data/errorMessage)
│   ├── networking/            # DioFactory, AuthInterceptor, error handlers, ApiConstants
│   ├── constants/             # API endpoints, strings, spacing
│   ├── di/                    # get_it + injectable setup (injection.dart/.config.dart)
│   ├── storage/               # SecureStorageService (token, exam history)
│   ├── resources/             # theme, palette, text styles
│   ├── routes/                # legacy route helpers (see app/routing for the router)
│   ├── utils/                 # validators, snack bars, helpers
│   └── widgets/               # shared buttons, text fields, headers, OTP input
└── feature/
    ├── auth/                  # login, sign up, session (AuthCubit), splash
    │   ├── api/client/        # AuthApiClient (Dio)
    │   ├── data/{models,data_sources/remote,repos}/
    │   ├── domain/{entities,repos,use_cases}/
    │   └── presentation/{login,sign_up,auth,splash}/
    ├── forgot_password/       # forgot → verify code → reset password
    │   ├── api/client/  data/  domain/  presentation/
    ├── home/                  # subjects explore + subject details (view models)
    │   ├── api/client/  data/  domain/  presentation/
    ├── exam/                  # subjects/exams/questions, taking, score, history
    │   ├── api/client/  data/{models,data_sources/{remote,local},repos}/
    │   ├── domain/{entities,repos,use_cases,utils}/
    │   └── presentation/{explore,subject_exams,taking_exam,score,answers,history,instructions}/
    ├── profile/               # view/edit profile, change password
    │   ├── api/client/  data/  domain/  presentation/
    └── result/                # Result tab (renders shared exam-history view)
        └── presentation/views/
```

## Testing

Tests mirror the `lib/` layout under `test/feature/<name>/...` (42 test files, ~142 tests, all
passing at the time of writing, plus the default `widget_test.dart` smoke test).

- **Covered layers** — remote data sources (mocked API clients), local history data source (mocked
  secure storage), repository implementations (mocked data sources, real DTO→entity mapping, token
  persistence verified), use cases (mocked repos), and cubits/view models — `LoginCubit`,
  `SignUpCubit`, `AuthCubit`, forgot-password cubits, explore/subject-details view models,
  exam explore/subject-exams/history cubits, `ProfileViewModel` (mocked use cases, stream
  assertions on loading/data/error states).
- **Approach** — `mockito` `@GenerateMocks` with generated `*.mocks.dart` files, `provideDummy`
  values for `BaseResponse` generics, and `Arrange / Act / Assert` structure with success + failure
  cases per unit (extra branch cases where logic clearly branches, e.g. exam-not-found, search
  filtering, history sorting/filtering).
- **Not covered** — `TakingExamCubit` (timer + service-locator coupling), thin Dio API clients,
  model JSON serialization, widgets/screens, DI/router setup.

Run the tests:

```bash
flutter test
```

To run a single feature, e.g. profile:

```bash
flutter test test/feature/profile
```

Mocks are generated with:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Getting Started

Prerequisites:

- Flutter SDK (project targets Dart `^3.8.0`; any recent Flutter 3.x toolchain works)
- An emulator/device or desktop target for `flutter run`

Setup:

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## Screenshots

<!-- screenshots go here -->
