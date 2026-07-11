# edu_erp — Educational ERP

A desktop ERP system for managing educational institutions (nurseries, learning centers, language institutes, Quran centers, training academies) built with **Flutter Desktop** and **local-only** data persistence.

---

## Tech Stack

| Area | Choice |
|------|--------|
| Platform | Flutter Desktop (Windows) |
| Architecture | Clean Architecture (UI → Application → Domain → Infrastructure) |
| State management | Riverpod |
| Navigation | go_router |
| Data layer | Drift (SQLite) — no REST, no remote auth |
| Localization | easy_localization (ar primary, en optional) |
| UI | ScreenUtil, custom minimalist theme |

---

## Architecture

```text
lib/src/
├── ui/{domain}/              # screens, widgets, riverpod providers
├── application/{domain}/use_cases/  # one class per operation
├── domain/{domain}/
│   ├── entities/             # pure Dart, no Flutter/Drift imports
│   └── repositories/         # abstract interfaces only
├── infrastructure/
│   ├── database/             # Drift tables + DAOs
│   ├── repositories/         # impl of domain interfaces
│   └── devices/              # fingerprint adapter (stub)
├── routing/
├── services/
└── theme/
```

**Domains:** person, academic, attendance, finance, wallet, canteen, library, settings.

---

## Features

### Student Management
* Registration, profiles, status tracking
* Multiple course enrollment
* Student history, notes, attachments

### Guardian Management
* Guardian profiles linked to students
* Contact information, payment tracking

### Teacher & Employee Management
* Profiles, subject/course assignment
* Attendance, salary/payroll

### Academic
* Programs, courses, classrooms, schedules
* Exams, grades, section assignments

### Attendance
* Student, teacher, employee attendance
* Fingerprint device integration (adapter pattern, stub ready)

### Finance
* Tuition fees, receipts, expenses, payroll
* Financial reports

### Wallet
* Student wallet recharge, balance tracking
* Transaction history

### Canteen
* Product management (name, price, stock)
* Sales tracking (cash + wallet)

### Library
* Book management, borrowing records

### Settings
* User accounts, roles, permissions
* Institution configuration

---

## Getting Started

```bash
flutter pub get
dart run build_runner build
flutter run -d windows
```

---

## Project Status

**Active development** — core modules implemented, UI screens being built out.

---

## License

MIT
