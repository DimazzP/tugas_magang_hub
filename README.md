# tugas_magang_hub

Flutter application with Clean Architecture, GetX state management, and custom components.

## Features

- ✅ Clean Architecture (Domain, Data, Presentation layers)
- ✅ GetX for state management and routing
- ✅ Custom reusable components
- ✅ Auto-scrolling carousel
- ✅ Draggable bottom sheet login
- ✅ Product entity and remote models
- ✅ Custom fonts (Helvetica, Nunito)

## Project Structure

```
lib/
├── core/
│   ├── const/          # Constants (colors, fonts, sizes)
│   ├── routes/         # App routes configuration
│   └── widgets/        # Reusable widgets
├── data/
│   ├── datasources/    # Remote and local data sources
│   ├── models/         # Remote models
│   └── repositories/   # Repository implementations
├── domain/
│   ├── entities/       # Business entities
│   ├── repository/     # Repository interfaces
│   └── usecases/       # Business logic use cases
└── feature/
    ├── login/          # Login feature
    ├── home/           # Home feature
    └── detail_product/ # Product detail feature
```

## Getting Started

1. Clone the repository
2. Run `flutter pub get`
3. Run `flutter run`

## Dependencies

- `get: ^4.6.6` - State management and routing
- `dio: ^5.7.0` - HTTP client
- `google_fonts: ^6.2.1` - Custom fonts

## Architecture

This project follows Clean Architecture principles with three main layers:

1. **Presentation Layer** (UI + Controllers)
2. **Domain Layer** (Entities + Use Cases + Repository Interfaces)
3. **Data Layer** (Models + Data Sources + Repository Implementations)

