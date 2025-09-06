# Monks Manufacturing Dashboard

A Flutter web application for monitoring manufacturing KPIs, machine efficiency, and output quality across plants, units, segments, lines, and machines.

## 🏗️ Architecture Overview

This application follows a **clean architecture** pattern with **Riverpod** for state management and **code generation** for type safety. The architecture is designed to be scalable, maintainable, and follows Flutter best practices.

### Project Structure

```
lib/
├── core/                    # Core utilities, theme, constants
├── models/                  # Data models (Freezed)
├── services/                # API services and providers
├── pages/                   # Main application pages
├── modules/                 # Feature modules
├── charts/                  # Chart adapters and core
└── shared_widgets/          # Reusable UI components
```

## 🔄 Data Flow Architecture

### 1. **Data Layer (Bottom)**

```
API Response → ApiService → Providers → UI Widgets
```

### 2. **State Management Flow**

```
User Action → FilterNotifier → Provider Updates → UI Rebuilds
```

### 3. **Hierarchical Data Flow**

```
Plants → Units → Segments → Lines → Machines → KPI Data
```

## 📊 State Management Patterns

### **Riverpod Code Generation Pattern**

The application uses **Riverpod code generators** (`@riverpod`) for cleaner, type-safe state management:

#### **Provider Definition**

```dart
@riverpod
Future<List<Plant>> plants(PlantsRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getPlants();
}
```

#### **State Notifier Pattern**

```dart
@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() => FilterState.initial();

  void updatePlant(String? plantId) {
    state = state.copyWith(
      plantId: plantId,
      unitId: null,        // Clear dependent filters
      segmentId: null,
      lineId: null,
      machineId: null,
    );
  }
}
```

#### **Provider Consumption**

```dart
// Watching state changes
final filterState = ref.watch(filterNotifierProvider);

// Reading providers
final plantsAsync = ref.watch(plantsProvider);

// Triggering actions
ref.read(filterNotifierProvider.notifier).updatePlant(plantId);
```

### **Key State Management Concepts**

1. **Immutable State**: All state is immutable using Freezed
2. **Reactive Updates**: UI automatically rebuilds when state changes
3. **Dependency Injection**: Services are injected via providers
4. **Error Handling**: AsyncValue handles loading, success, and error states

## 🗂️ Data Models

### **Machine Hierarchy Models**

```dart
@freezed
class Plant with _$Plant {
  const factory Plant({
    @JsonKey(name: 'plant_id') required String plantId,
    @JsonKey(name: 'plant_name') required String plantName,
    String? location,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Plant;
}
```

**Key Features:**

- **Freezed**: Immutable data classes with `copyWith`, `==`, `hashCode`
- **JSON Serialization**: Automatic JSON parsing with snake_case to camelCase mapping
- **Type Safety**: Compile-time type checking

### **Filter State Model**

```dart
@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    String? plantId,
    String? unitId,
    String? segmentId,
    String? lineId,
    String? machineId,
    @DateTimeRangeConverter() required DateTimeRange dateRange,
  }) = _FilterState;
}
```

**Key Features:**

- **Hierarchical Filters**: Parent filters control child filter availability
- **Custom Converters**: DateTimeRange conversion for JSON serialization
- **Immutable Updates**: State changes create new instances

## 🌐 API Layer

### **ApiService Structure**

```dart
class ApiService {
  final Dio _dio;

  // Hierarchical REST endpoints
  Future<List<Unit>> getUnitsByPlant(String plantId) async {
    final response = await _dio.get('/plants/$plantId/units');
    return (response.data as List)
        .map((json) => Unit.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
```

**Key Features:**

- **Dio HTTP Client**: Robust HTTP client with timeout handling
- **RESTful Design**: Hierarchical endpoints (`/plants/:id/units`)
- **Type Safety**: Explicit type casting and error handling
- **Error Propagation**: Centralized error handling with `_handleError`

### **API Endpoints Structure**

```
GET /plants                           # Get all plants
GET /plants/:plantId/units           # Get units for a plant
GET /units/:unitId/segments          # Get segments for a unit
GET /segments/:segmentId/lines       # Get lines for a segment
GET /units/:unitId/machines          # Get machines for a unit
GET /kpi/output/timeseries           # Get output KPI data
GET /kpi/availability/timeseries     # Get availability KPI data
```

## 🎯 Provider Architecture

### **Provider Categories**

#### **1. Data Providers**

```dart
@riverpod
Future<List<Plant>> plants(PlantsRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getPlants();
}
```

#### **2. State Notifier Providers**

```dart
@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() => FilterState.initial();

  void updateFilters(FilterState newFilters) {
    state = newFilters;
  }
}
```

#### **3. Computed Providers**

```dart
@riverpod
Future<OutputTimeseriesResponse> outputTimeseries(
  OutputTimeseriesRef ref,
  FilterState filters,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getOutputTimeseries(filters);
}
```

### **Provider Dependencies**

```
apiServiceProvider → dataProviders → UI Widgets
                ↓
        filterNotifierProvider → computedProviders
```

## 🎨 UI Architecture

### **Widget Hierarchy**

```
App → Router → ShellScaffold → Pages → SharedWidgets
```

### **Responsive Design**

- **Material Design 3**: Modern design system
- **Breakpoint System**: Responsive layouts for different screen sizes
- **Adaptive Components**: Widgets that adapt to available space

### **Component Architecture**

```dart
class MachineFilter extends ConsumerWidget {
  final FilterState currentFilters;
  final Function(FilterState) onFiltersChanged;
  final bool compact;  // Responsive design pattern

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch multiple providers for reactive updates
    final plantsAsync = ref.watch(plantsProvider);
    final unitsAsync = currentFilters.plantId != null
        ? ref.watch(unitsByPlantProvider(currentFilters.plantId!))
        : const AsyncValue.data(<Unit>[]);
  }
}
```

## 📖 Code Reading Guide

### **Start Here: Understanding the Application Flow**

#### **1. Entry Point (`lib/main.dart`)**

- **Purpose**: Application bootstrap and provider configuration
- **Key Concepts**: ProviderScope, chart registry setup
- **What to Learn**: How providers are configured at app startup

#### **2. App Configuration (`lib/app.dart`)**

- **Purpose**: Material app setup with routing
- **Key Concepts**: ConsumerWidget, router integration
- **What to Learn**: How Riverpod integrates with Flutter routing

#### **3. Routing (`lib/router.dart`)**

- **Purpose**: Application navigation structure
- **Key Concepts**: GoRouter, ShellRoute, nested routing
- **What to Learn**: How navigation is structured and how pages are organized

### **Data Flow Understanding**

#### **4. Models (`lib/models/`)**

- **Start with**: `machine_hierarchy.dart` - Core business entities
- **Then**: `filter_state.dart` - Application state structure
- **Finally**: `kpi_data.dart` - Data models for charts and analytics

**Key Learning Points:**

- How Freezed generates immutable classes
- JSON serialization patterns
- Model relationships and hierarchy

#### **5. Services (`lib/services/`)**

- **Start with**: `api_service.dart` - Data fetching layer
- **Then**: `providers.dart` - State management layer

**Key Learning Points:**

- API service patterns
- Provider organization and dependencies
- State notifier patterns for complex state

### **State Management Deep Dive**

#### **6. Provider Patterns (`lib/services/providers.dart`)**

```dart
// Study these patterns:
@riverpod
Future<List<Plant>> plants(PlantsRef ref) async { ... }

@riverpod
class FilterNotifier extends _$FilterNotifier { ... }

@riverpod
Future<OutputTimeseriesResponse> outputTimeseries(
  OutputTimeseriesRef ref,
  FilterState filters,
) async { ... }
```

**Key Concepts to Understand:**

- **Provider Dependencies**: How providers reference each other
- **State Notifiers**: How complex state is managed
- **Computed Providers**: How data is derived from other providers

#### **7. Filter State Management**

```dart
// Study the hierarchical filter pattern:
void updatePlant(String? plantId) {
  state = state.copyWith(
    plantId: plantId,
    unitId: null,        // Clear dependent filters
    segmentId: null,
    lineId: null,
    machineId: null,
  );
}
```

**Key Learning Points:**

- How parent filter changes affect child filters
- Immutable state updates with `copyWith`
- State synchronization patterns

### **UI Implementation Understanding**

#### **8. Pages (`lib/pages/`)**

- **Start with**: `home_page.dart` - Main dashboard implementation
- **Then**: `dashboard_page.dart` - Comparison functionality

**Key Learning Points:**

- How providers are consumed in UI
- Filter integration patterns
- Chart data binding

#### **9. Shared Widgets (`lib/core/shared_widgets/`)**

- **Start with**: `filters/machine_filter.dart` - Complex filter implementation
- **Then**: `charts/kpi_line_chart.dart` - Data visualization
- **Finally**: `tables/kpi_data_table.dart` - Data presentation

**Key Learning Points:**

- Widget composition patterns
- Provider consumption in reusable widgets
- Responsive design implementation

### **Advanced Patterns**

#### **10. Chart System (`lib/charts/`)**

- **Purpose**: Abstract chart rendering system
- **Key Concepts**: Adapter pattern, chart registry
- **What to Learn**: How to make chart rendering pluggable and extensible

#### **11. Shell Scaffold (`lib/modules/shell/`)**

- **Purpose**: Application shell with navigation
- **Key Concepts**: Collapsible sidebar, responsive navigation
- **What to Learn**: Complex layout management and state persistence

## 🔧 Development Workflow

### **Code Generation**

```bash
# Generate Freezed models and Riverpod providers
dart run build_runner build --delete-conflicting-outputs

# Watch for changes during development
dart run build_runner watch
```

### **State Management Best Practices**

1. **Use Code Generation**: Always use `@riverpod` instead of manual provider creation
2. **Immutable State**: Never modify state directly, always use `copyWith`
3. **Provider Dependencies**: Use `ref.read()` for services, `ref.watch()` for reactive data
4. **Error Handling**: Use `AsyncValue` for loading states and error handling
5. **State Notifiers**: Use for complex state that needs multiple update methods

### **API Integration Patterns**

1. **Hierarchical Endpoints**: Follow RESTful design for nested resources
2. **Error Handling**: Centralize error handling in ApiService
3. **Type Safety**: Always cast API responses to proper types
4. **Loading States**: Use AsyncValue for proper loading state management

## 🌍 Environment Configuration

The application supports multiple environments with different API endpoints:

### **Available Environments**

- **Local**: `http://localhost:8080` (default)
- **Staging**: `https://monks-be-production.up.railway.app`
- **Production**: `https://api.monks-production.com` (dummy URL)

### **Environment Management**

#### **Using the Environment Script**

```bash
# Switch to local environment
./scripts/set_env.sh local

# Switch to staging environment
./scripts/set_env.sh staging

# Switch to production environment
./scripts/set_env.sh prod

# Regenerate environment files after switching
dart run build_runner build
```

#### **Manual Environment Configuration**

Create a `.env` file in the project root:

```bash
# For local development
ENVIRONMENT=local
API_BASE_URL=http://localhost:8080

# For staging
ENVIRONMENT=staging
API_BASE_URL=https://monks-be-production.up.railway.app

# For production
ENVIRONMENT=prod
API_BASE_URL=https://api.monks-production.com
```

#### **Environment Detection in Code**

```dart
import 'package:mfg_dashboard/core/config/app_config.dart';

// Get current API base URL
final apiUrl = AppConfig.apiBaseUrl;

// Check environment
if (AppConfig.isLocal) {
  // Local development code
} else if (AppConfig.isStaging) {
  // Staging environment code
} else if (AppConfig.isProduction) {
  // Production environment code
}
```

## 🚀 Getting Started

### **Prerequisites**

- Flutter 3.9.0+
- Dart 3.9.0+
- Backend API running (see environment configuration above)

### **Setup**

```bash
# Clone and setup
git clone <repository>
cd Monks-FE

# Install dependencies
flutter pub get

# Set environment (defaults to local)
./scripts/set_env.sh local

# Generate code
dart run build_runner build --delete-conflicting-outputs

# Run the application
flutter run -d chrome --web-port 4001
```

### **Development Commands**

```bash
# Code generation
make generate

# Linting and analysis
make analyze

# Format code
make format

# Run tests
make test
```

## 📚 Key Takeaways

1. **Riverpod + Code Generation**: Provides clean, type-safe state management
2. **Freezed Models**: Ensures data immutability and type safety
3. **Hierarchical Architecture**: Clear separation of concerns from data to UI
4. **Reactive UI**: Automatic UI updates based on state changes
5. **Scalable Structure**: Easy to add new features and modify existing ones

This architecture provides a solid foundation for building complex, maintainable Flutter applications with excellent developer experience and runtime performance.
