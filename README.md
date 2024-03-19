### densu

A new Flutter project.

### Densu Project Setup with GetX Pattern

#### Directory Structure

```
lib/
│
├── app/
│   │
│   ├── data/
│   │   ├── adapters/
│   │   │   └── api_adapter.dart
│   │   │
│   │   ├── models/
│   │   │
│   │   └── services/
│   │       └── analytics_service.dart
│   │
│   ├── modules/
│   │   ├── authentication/
│   │   │   ├── bindings/
│   │   │   │   └── authentication_binding.dart
│   │   │   │
│   │   │   ├── controllers/
│   │   │   │   └── authentication_controller.dart
│   │   │   │
│   │   │   └── views/
│   │   │       └── authentication_view.dart
│   │   │
│   │   ├── home/
│   │   │   ├── bindings/
│   │   │   │   └── home_binding.dart
│   │   │   │
│   │   │   ├── controllers/
│   │   │   │   └── home_controller.dart
│   │   │   │
│   │   │   ├── data/
│   │   │   │   └── leads_datasource.dart
│   │   │   │
│   │   │   ├── model/
│   │   │   │   └── chart_data.dart
│   │   │   │
│   │   │   └── views/
│   │   │       └── home_view.dart
│   │   │
│   │   ├── leads/
│   │   │   ├── bindings/
│   │   │   │   └── leads_binding.dart
│   │   │   │
│   │   │   ├── controllers/
│   │   │   │   └── leads_controller.dart
│   │   │   │
│   │   │   └── views/
│   │   │       └── leads_view.dart
│   │   │
│   │   ├── main/
│   │   │   ├── bindings/
│   │   │   │   └── main_binding.dart
│   │   │   │
│   │   │   ├── controllers/
│   │   │   │   └── main_controller.dart
│   │   │   │
│   │   │   └── views/
│   │   │       └── main_view.dart
│   │   │
│   │   ├── profile/
│   │   │   ├── bindings/
│   │   │   │   └── profile_binding.dart
│   │   │   │
│   │   │   ├── controllers/
│   │   │   │   └── profile_controller.dart
│   │   │   │
│   │   │   └── views/
│   │   │       └── profile_view.dart
│   │   │
│   │   ├── quote_detail/
│   │   │   ├── bindings/
│   │   │   │   └── quote_detail_binding.dart
│   │   │   │
│   │   │   ├── controllers/
│   │   │   │   └── quote_detail_controller.dart
│   │   │   │
│   │   │   └── views/
│   │   │       └── quote_detail_view.dart
│   │   │
│   │   └── quotes/
│   │       ├── bindings/
│   │       │   └── quotes_binding.dart
│   │       │
│   │       ├── controllers/
│   │       │   └── quotes_controller.dart
│   │       │
│   │       └── views/
│   │           └── quotes_view.dart
│   │
│   ├── routes/
│   │   ├── app_pages.dart
│   │   └── app_routes.dart
│   │
│   ├── themes/
│   │   ├── app_theme.dart
│   │   └── colors.dart
│   │
│   ├── utils/
│   │   └── constants.dart
│   │
│   └── widgets/
│       ├── button.dart
│       ├── checkbox.dart
│       ├── data_table.dart
│       ├── drop_down.dart
│       ├── list_switch.dart
│       ├── spacer.dart
│       ├── text.dart
│       └── text_input.dart
│
└── main.dart
```

#### Setup Instructions

1. Clone the repository:
   ```bash
   git clone git@github.com:paulodhiambo/densu.git
   ```

2. Navigate to the project directory:
   ```bash
   cd densu/
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the project:
   ```bash
   flutter run
   ```

#### Project Overview

- **app/data/**: Contains adapters for API calls, data models, and services like analytics.
- **app/modules/**: Each module represents a feature of the application (e.g., authentication, home, leads, etc.) with bindings, controllers, and views.
- **app/routes/**: Handles app navigation with GetX using app_pages.dart and app_routes.dart.
- **app/themes/**: Includes app-wide themes and color constants.
- **app/utils/**: Utility functions and constants.
- **app/widgets/**: Reusable UI widgets used throughout the app.