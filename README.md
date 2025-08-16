# MFG Dashboard

A Flutter web dashboard application with responsive design and flexible charting capabilities.

## Configure API base URL

By default, API requests point to `http://localhost:8080`. To use your live endpoints, run with a custom base URL:

```bash
flutter run -d chrome --dart-define=API_BASE_URL=https://your.api.domain
```

Or for web build:
```bash
flutter build web --dart-define=API_BASE_URL=https://your.api.domain
```

The app currently consumes these live GET endpoints:
- `/plants` → Plant list
- `/segments` → Segment list
- `/lines` → Line list
- `/machines` → Machine list

Other documentation continues below.

## New to Flutter?

Before diving into the codebase, here's what you need to know:

### Key Flutter Concepts Used in This Project

1. **Widgets**: Everything in Flutter is a widget. Think of them as LEGO blocks:
   - `StatelessWidget`: Simple widgets that don't change (like a text label)
   - `StatefulWidget`: Widgets that can change (like a form)
   - `ConsumerWidget`: Special widgets that can listen to providers (our state management solution)

2. **State Management**: We use Riverpod for managing state:
   - Providers: Hold and manage data
   - Consumers: Widgets that listen to providers
   - Notifiers: Classes that can update provider state

3. **Routing**: We use go_router for navigation:
   - Similar to web routes (e.g., '/dashboard', '/settings')
   - Handles page transitions and nested navigation

### Important Configuration Files

1. **pubspec.yaml**
   ```yaml
   # This is your project's main configuration file
   name: mfg_dashboard        # Project name
   dependencies:             # External packages you use
     flutter:               # Core Flutter framework
     fl_chart: ^0.66.2     # Chart library
   dev_dependencies:        # Packages used during development
     build_runner:         # Generates code
   ```
   - Controls project name, version
   - Lists all dependencies
   - Configures assets (images, fonts)
   - Run `flutter pub get` after changes

2. **analysis_options.yaml**
   ```yaml
   # Controls Flutter's code analyzer
   include: package:flutter_lints/flutter.yaml
   linter:
     rules:
       - prefer_final_fields  # Example rule
   ```
   - Enforces coding standards
   - Helps catch common mistakes
   - Makes code more consistent

3. **Makefile**
   ```makefile
   # Shortcuts for common commands
   gen:                # Generate code
     flutter pub run build_runner build
   dev:                # Run in Chrome
     flutter run -d chrome
   ```
   - Not a Flutter file, but helps run common commands
   - Type `make command` instead of long Flutter commands

## Project Structure for Beginners

### 1. Start Here: Basic App Setup
```
lib/
├── main.dart          # App starts here! Very simple file
└── app.dart           # Basic app configuration
```
What to learn:
- How Flutter apps start
- Basic widget structure
- How routing is set up

### 2. Navigation Understanding
```
lib/router.dart        # Handles page navigation
```
Learn:
- How to define routes (URLs)
- How to navigate between pages
- How to handle nested navigation

### 3. Layout and Pages
```
lib/features/
├── shell/            # Main app layout (like a template)
│   └── shell_scaffold.dart  # Handles responsive design
├── dashboard/        # Dashboard page
├── charts/          # Charts page
└── settings/        # Settings page
```
Each page follows same pattern:
1. A main widget class
2. Basic layout structure
3. Content specific to that page

### 4. Chart System (More Advanced)

Start with the basics:
```
lib/charts/widgets/   # Use these first
├── app_bar_chart.dart    # Bar charts
├── app_line_chart.dart   # Line charts
└── app_heatmap.dart      # Heat maps
```

Then learn how they work:
```
lib/charts/core/      # The foundation
├── chart_models.dart    # Data structures
└── chart_adapter.dart   # Interfaces
```

Finally, understand implementations:
```
lib/charts/adapters/  # Actual chart implementations
```

### 5. Constants and Utilities
```
lib/core/
├── constants/        # App-wide constants
└── utils/           # Helper functions
```

## Common Tasks (With Examples)

### 1. Adding a New Page

1. Create page file:
```dart
// lib/features/my_page/my_page.dart
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('My Page')),
    );
  }
}
```

2. Add to router.dart:
```dart
GoRoute(
  path: '/my-page',
  builder: (context, state) => const MyPage(),
),
```

3. Add to navigation in shell_scaffold.dart

### 2. Using a Chart

```dart
AppBarChart(
  series: [
    Series(
      name: 'Sales',
      data: [
        DataPoint(x: 'Jan', y: 100),
        DataPoint(x: 'Feb', y: 200),
      ],
    ),
  ],
  xAxis: AxisFormat(title: 'Month'),
  yAxis: AxisFormat(title: 'Sales'),
)
```

### 3. Making Layout Responsive

Check screen size:
```dart
final screenWidth = MediaQuery.of(context).size.width;
final isSmallScreen = screenWidth < Breakpoints.sm;

return isSmallScreen 
  ? MobileLayout() 
  : DesktopLayout();
```

## Development Workflow

1. **Making Changes**:
   ```bash
   # 1. Get dependencies
   flutter pub get

   # 2. Generate code (if needed)
   make gen

   # 3. Run the app
   make dev
   ```

2. **After Changing Models**:
   ```bash
   # Regenerate code
   make gen
   ```

3. **Building for Production**:
   ```bash
   make build-web
   ```

## Common Issues and Solutions

1. **"build_runner failed"**
   - Run `flutter clean`
   - Then `flutter pub get`
   - Then `make gen`

2. **"Undefined class 'Something'"**
   - Probably missing code generation
   - Run `make gen`

3. **Chart not showing**
   - Check data format
   - Verify series structure
   - Make sure parent widget has size

## Next Steps

1. Try modifying the dashboard page
2. Add a new chart to the gallery
3. Experiment with different layouts
4. Add new features to existing pages

Need help? Check:
- [Flutter Documentation](https://docs.flutter.dev/)
- [go_router Guide](https://pub.dev/packages/go_router)
- [FL Chart Examples](https://pub.dev/packages/fl_chart/example)
- [Riverpod Documentation](https://riverpod.dev/)

## App architecture & data flow

### Layers
- **UI (features)**: Widgets in `lib/features/**` (e.g., `dashboard/dashboard_page.dart`) render screens and capture user input.
- **State (Riverpod)**: Providers in `lib/features/dashboard/kpi_state.dart` expose current filters, selected KPI, option lists, and time‑series data.
- **Repository**: `lib/features/dashboard/kpi_repository.dart` translates UI/state intent to HTTP calls and maps responses to app models (e.g., `Series`, `DataPoint`).
- **Network**: `lib/core/network/api_client.dart` (Dio) configured with `API_BASE_URL` from `lib/core/config/app_config.dart`.
- **Charts**: High‑level widgets in `lib/charts/widgets/**` delegate to adapters via the registry; visuals are controlled by tokens in `lib/core/design/tokens.dart`.

### End‑to‑end flow (example: user changes a filter)
1. User picks a new Plant/Segment/Line/Machine or Date Range on `DashboardPage`.
2. The page dispatches to the filters controller:
   - `ref.read(kpiFiltersProvider.notifier).updatePlant('Plant A')`
3. Riverpod updates `kpiFiltersProvider` state. Any providers that depend on it re‑evaluate.
4. `kpiSeriesProvider` (a `FutureProvider.autoDispose`) reads `selectedKpiIdProvider` + `kpiFiltersProvider` and calls:
   - `KpiRepository.fetchSeries(id, plant, segment, line, machine)`
5. `KpiRepository` uses `ApiClient.dio.get(...)` against `API_BASE_URL` to hit the live endpoint, maps the JSON into `Series { name, List<DataPoint> }`.
6. `kpiSeriesProvider` completes with `AsyncValue.data(Series)`.
7. `DashboardPage` watches `kpiSeriesProvider` and rebuilds only the chart card:
   - loading → progress
   - error → message
   - data → passes `Series` to `AppLineChart`
8. `AppLineChart` asks the active adapter factory (via the registry) to build the concrete chart with unified styling (`tokens.dart`).

### State map
- `selectedKpiIdProvider` (StateProvider<String>)
- `kpiFiltersProvider` (StateNotifier<KpiFiltersController>)
- `plantsProvider`, `segmentsProvider`, `linesProvider`, `machinesProvider` (FutureProvider<List<String>>)
- `kpiSeriesProvider` (FutureProvider.autoDispose<Series>)

### Files of interest
- UI: `lib/features/dashboard/dashboard_page.dart`
- State: `lib/features/dashboard/kpi_state.dart`
- Repository: `lib/features/dashboard/kpi_repository.dart`
- Network: `lib/core/network/api_client.dart`, `lib/core/config/app_config.dart`
- Models (charts): `lib/charts/core/chart_models.dart`
- Charts: `lib/charts/widgets/**`, `lib/charts/adapters/**`, registry in `lib/charts/core/chart_registry.dart`

### Replace mocks with real series endpoint
If you have a live time‑series endpoint, update:
- Implement the real call + mapping in `KpiRepository.fetchSeries(...)`
- The UI and state are already decoupled; no changes needed in widgets.