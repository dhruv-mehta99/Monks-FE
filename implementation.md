# MFG Dashboard - Implementation Plan

## Project Overview
A Flutter web application for monitoring machine and factory efficiency with KPI visualization. The app will have two main screens: Home (with machine-specific KPI time series) and Dashboard (for comparing KPIs across machines).

## Architecture Principles
- **MVP First**: Keep complexity minimal while ensuring scalability
- **Page-Based Organization**: Simple, intuitive structure for faster development
- **Reusable Components**: Shared widgets in core for consistency
- **Responsive Design**: Works across different screen sizes
- **State Management**: Centralized state with Riverpod + Code Generation

## Project Structure

### 1. Core Architecture

```
lib/
├── pages/                   # Page-based organization
│   ├── home/               # Home screen (machine-specific KPIs)
│   └── dashboard/          # Dashboard screen (machine comparison)
├── core/                    # App-wide utilities and shared components
│   ├── shared_widgets/     # Reusable widgets (graphs, filters, etc.)
│   ├── theme/              # Material theme
│   ├── constants/          # App constants
│   └── utils/              # Helper functions
├── models/                  # Data models
├── services/                # API calls, data fetching
└── main.dart               # App entry point
```

### 2. Page Modules

#### Home Page (`pages/home/`)
- **Purpose**: Display time series KPI data for a selected machine
- **Components**:
  - `home_page.dart` - Main page with filters and KPI chart
  - `home_controller.dart` - Business logic for home screen
  - `home_state.dart` - State management for home screen

#### Dashboard Page (`pages/dashboard/`)
- **Purpose**: Compare KPIs across multiple machines
- **Components**:
  - `dashboard_page.dart` - Main dashboard page
  - `dashboard_controller.dart` - Business logic for dashboard
  - `dashboard_state.dart` - State management for dashboard

### 3. Core Shared Widgets (`core/shared_widgets/`)

#### Filter Widgets
- `machine_filter.dart` - Hierarchical machine selection
- `time_range_filter.dart` - Date/time range picker
- `plant_line_filter.dart` - Plant and line dropdowns

#### Chart Widgets
- `kpi_line_chart.dart` - Time series line chart wrapper
- `chart_legend.dart` - Reusable chart legends
- `chart_container.dart` - Consistent chart styling

#### Data Widgets
- `kpi_card.dart` - Metric display cards
- `status_indicator.dart` - Machine status displays
- `metric_display.dart` - KPI value displays

### 4. Data Models

#### Core Models
```dart
// Machine hierarchy models
class Plant {
  final String id;
  final String name;
  final List<Line> lines;
}

class Line {
  final String id;
  final String name;
  final String plantId;
  final List<Unit> units;
}

class Unit {
  final String id;
  final String name;
  final String lineId;
  final List<Segment> segments;
}

class Segment {
  final String id;
  final String name;
  final String unitId;
  final List<Machine> machines;
}

class Machine {
  final String id;
  final String name;
  final String segmentId;
  final MachineStatus status;
}

// KPI models
class KpiData {
  final String machineId;
  final String kpiType;
  final DateTime timestamp;
  final double value;
  final String unit;
}

class KpiDefinition {
  final String id;
  final String name;
  final String description;
  final String unit;
  final KpiCategory category;
}
```

### 5. State Management with Riverpod + Code Generation

#### Providers Structure (Using Riverpod Generators)
```dart
// Core providers with @riverpod annotation
@riverpod
Future<MachineHierarchy> machineHierarchy(MachineHierarchyRef ref) async {
  // Fetch machine hierarchy from API
  return await ref.read(machineServiceProvider).getHierarchy();
}

@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() {
    return const FilterState();
  }

  void updatePlant(String plantId) {
    state = state.copyWith(plantId: plantId);
  }

  void updateMachine(String machineId) {
    state = state.copyWith(machineId: machineId);
  }
}

// Page-specific providers
@riverpod
Future<List<KpiData>> homeKpiData(HomeKpiDataRef ref, FilterState filters) async {
  return await ref.read(kpiServiceProvider).getKpiData(filters);
}

@riverpod
Future<List<KpiComparison>> dashboardComparison(DashboardComparisonRef ref, ComparisonFilters filters) async {
  return await ref.read(kpiServiceProvider).getComparisonData(filters);
}
```

#### Benefits of Riverpod Generators
- **Cleaner Code**: No manual provider creation
- **Type Safety**: Compile-time provider validation
- **Better IDE Support**: Auto-completion and refactoring
- **Easier Testing**: Generated mocks and test utilities
- **Consistent Patterns**: Standardized provider structure

### 6. Implementation Phases

#### Phase 1: Core Infrastructure
1. Set up page-based folder structure
2. Create core data models with Freezed
3. Implement basic state management with Riverpod generators
4. Set up routing between screens

#### Phase 2: Shared Widgets
1. Create filter widgets (machine, time, plant/line)
2. Implement chart wrapper components
3. Build reusable data display widgets
4. Establish consistent styling

#### Phase 3: Home Page
1. Implement home page layout
2. Integrate filter widgets
3. Create KPI time series chart
4. Add default machine selection

#### Phase 4: Dashboard Page
1. Create dashboard layout
2. Implement machine comparison charts
3. Add time frame selection
4. Integrate with filter system

#### Phase 5: Polish & Testing
1. Responsive design improvements
2. Performance optimization
3. Testing and bug fixes

### 7. Key Technical Decisions

#### Chart System
- **Primary**: `fl_chart` for line charts (home screen)
- **Secondary**: `syncfusion_flutter_charts` for complex charts (dashboard)
- **Wrapper Components**: Custom wrappers in `core/shared_widgets/charts/`

#### State Management Pattern
- **Riverpod + Code Generation**: For cleaner, type-safe providers
- **StateNotifier**: For complex state logic with @riverpod annotation
- **FutureProvider**: For async data fetching with @riverpod annotation
- **Provider**: For simple state with @riverpod annotation

#### Code Generation Setup
- **Freezed**: For immutable data models
- **Riverpod Generator**: For provider code generation
- **JSON Serializable**: For API data parsing
- **Build Runner**: For code generation execution

#### Responsive Design
- **Breakpoints**: Material Design 3 breakpoints
- **Layout**: Adaptive layouts using `LayoutBuilder`
- **Navigation**: Collapsible sidebar for small screens

### 8. Scalability Considerations

#### Component Flexibility
- **Theme System**: Centralized styling in `core/theme/`
- **Data Adapters**: Easy to switch between data sources
- **Configuration**: JSON-based widget configuration

#### Code Organization
- **Page Isolation**: Each page is self-contained
- **Shared Components**: Reusable across pages
- **Clear Dependencies**: Pages depend on core, not vice versa
- **Generated Code**: Consistent patterns across the app

### 9. File Naming Conventions

- **Pages**: `*_page.dart`
- **Controllers**: `*_controller.dart`
- **States**: `*_state.dart`
- **Widgets**: `*_widget.dart`
- **Models**: `*_model.dart`
- **Services**: `*_service.dart`
- **Providers**: `*_provider.dart` (with @riverpod annotation)

### 10. Testing Strategy

- **Unit Tests**: Business logic and state management
- **Widget Tests**: UI component behavior
- **Integration Tests**: End-to-end user flows
- **Mock Data**: Consistent test data across tests
- **Provider Testing**: Using Riverpod test utilities

## Next Steps

1. **Review and Approve**: Confirm this architecture meets requirements
2. **Phase 1 Implementation**: Start with core infrastructure and Riverpod setup
3. **Iterative Development**: Build features incrementally
4. **Continuous Testing**: Test each phase before proceeding

This page-based architecture with Riverpod code generation ensures the app is simple to understand, easy to maintain, and scalable for future enhancements while keeping MVP complexity minimal.
