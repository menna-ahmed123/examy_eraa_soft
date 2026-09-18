# Examy 

A Flutter exam-prep app that lets users sign up, log in, and browse available exams pulled live from a REST API. Built with **Clean Architecture**, **Cubit (Bloc)** for state management, and **Dio** for networking.

##  Features

- **Authentication** — Register and Login screens, with the auth token persisted locally via `shared_preferences` and attached automatically to future requests.
- **Home** — Fetches and displays the list of available exams (title, duration, number of questions) with loading, error/retry, empty, and pull-to-refresh states.
- **Explore** *(in progress)* — Browse subjects, view exams by language for a subject, and start an exam.

## 🛠 Tech Stack

| Layer | Tools |
|---|---|
| State management | `flutter_bloc` (Cubit) |
| Networking | `dio`, `pretty_dio_logger` |
| Dependency injection | `get_it` |
| Local storage | `shared_preferences` |
| Architecture | Clean Architecture (data / domain-free repo pattern / presentation) |

##  Project Structure

```
lib/
├── core/
│   ├── networking/       # ApiConstants, DioFactory, ApiResult, error handling
│   ├── di/                # service_locator.dart (get_it setup)
│   ├── routes/             # AppRoutes / AppRouter
│   └── widgets/            # Shared widgets (AppButton, AppTextFormField)
├── features/
│   ├── register/
│   │   ├── data/            # models, repo
│   │   └── presentation/    # cubit, ui
│   ├── login/
│   │   ├── data/
│   │   └── presentation/
│   └── home/
│       ├── data/
│       └── presentation/
└── main.dart
```

Each feature follows the same pattern: a `RequestModel` for outgoing data, a `Repo` that talks to the API and returns an `ApiResult`, and a `Cubit`/`State` pair that the UI listens to.

## 🌐 API

Base URL: `https://exam.elevateegy.com/api/v1/`

| Endpoint | Method | Used for |
|---|---|---|
| `auth/signup` | POST | Register |
| `auth/signin` | POST | Login |
| `exams` | GET | Home (exams list) |

##  Getting Started

1. Clone the repo:
   ```bash
   git clone <your-repo-url>
   cd examy
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

##  Roadmap

- [ ] Explore feature (subjects → exams by language → start exam)
- [ ] Exam-taking flow and results screen
- [ ] Profile screen
- [ ] Forgot / reset password

## 👩 Author

**Menna Ahmed**
Flutter Developer & UI/UX Designer
[GitHub](https://github.com/menna-ahmed123) · [Behance](https://www.behance.net/mennaahmed166)
