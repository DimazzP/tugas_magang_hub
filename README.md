# tugas_magang_hub

Flutter application with Clean Architecture, GetX state management, and custom components.

## Features

- ✅ Clean Architecture (Domain, Data, Presentation layers)
- ✅ GetX for state management and routing

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


## Architecture

This project follows Clean Architecture principles with three main layers:

1. **Presentation Layer** (UI + Controllers)
2. **Domain Layer** (Entities + Use Cases + Repository Interfaces)
3. **Data Layer** (Models + Data Sources + Repository Implementations)

