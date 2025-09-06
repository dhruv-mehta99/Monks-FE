#!/bin/bash

# Flutter build script for Vercel
set -e

echo "🚀 Starting Flutter build for Vercel..."

# Install Flutter (stable version with Dart 3.7+ support)
echo "📦 Installing Flutter..."

# Detect platform
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    echo "Detected macOS, using local Flutter installation"
    if ! command -v flutter &> /dev/null; then
        echo "❌ Flutter not found locally. Please install Flutter first."
        exit 1
    fi
else
        # Linux (Vercel)
        echo "Detected Linux, downloading Flutter..."
        curl -L -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.1-stable.tar.xz
        tar xf flutter.tar.xz
        export PATH="$PWD/flutter/bin:$PATH"
fi

# Fix git ownership issues
echo "🔧 Fixing git ownership issues..."
git config --global --add safe.directory /vercel/path0/flutter
git config --global --add safe.directory /vercel/path0/flutter/bin/cache/dart-sdk

# Disable Flutter analytics to avoid prompts
echo "🔧 Disabling Flutter analytics..."
flutter config --no-analytics

# Verify Flutter installation
echo "✅ Flutter version:"
flutter --version

# Check Dart version
echo "✅ Dart version:"
dart --version

# Update SDK requirement for newer Dart version
echo "🔧 Updating SDK requirement for Dart 3.7.0..."
sed -i 's/sdk: ">=3.9.0 <4.0.0"/sdk: ">=3.7.0 <4.0.0"/g' pubspec.yaml

# Upgrade packages to latest versions compatible with Dart 3.7.0
echo "🔧 Upgrading packages to latest versions..."
sed -i 's/flutter_lints: \^3.0.2/flutter_lints: ^6.0.0/g' pubspec.yaml
sed -i 's/flutter_hooks: \^0.20.5/flutter_hooks: ^0.21.3+1/g' pubspec.yaml
sed -i 's/go_router: \^13.2.5/go_router: ^16.2.1/g' pubspec.yaml
sed -i 's/syncfusion_flutter_charts: \^29.1.38/syncfusion_flutter_charts: ^31.1.17/g' pubspec.yaml
sed -i 's/fl_chart: \^0.66.2/fl_chart: ^1.1.0/g' pubspec.yaml

# Fix fl_chart parameters for latest version
echo "🔧 Fixing fl_chart parameters for latest version..."
sed -i 's/tooltipBgColor: AppTokens.tooltipBg,/getTooltipColor: (group) => AppTokens.tooltipBg,/g' lib/charts/adapters/fl_chart_bar_adapter.dart
sed -i 's/tooltipRoundedRadius: AppTokens.tooltipRadius,/tooltipBorderRadius: BorderRadius.circular(AppTokens.tooltipRadius),/g' lib/charts/adapters/fl_chart_bar_adapter.dart
sed -i 's/tooltipBgColor: AppTokens.tooltipBg,/getTooltipColor: (touchedSpot) => AppTokens.tooltipBg,/g' lib/charts/adapters/fl_chart_line_adapter.dart
sed -i 's/tooltipRoundedRadius: AppTokens.tooltipRadius,/tooltipBorderRadius: BorderRadius.circular(AppTokens.tooltipRadius),/g' lib/charts/adapters/fl_chart_line_adapter.dart
sed -i 's/tooltipBgColor: Colors.blueGrey.withOpacity(0.9),/getTooltipColor: (touchedSpot) => Colors.blueGrey.withOpacity(0.9),/g' lib/core/shared_widgets/charts/kpi_line_chart.dart

# Get dependencies
echo "📦 Getting dependencies..."
if ! flutter pub get; then
    echo "❌ Failed to get dependencies"
    exit 1
fi

# Set environment to staging
echo "🌍 Setting environment to staging..."
echo "ENVIRONMENT=staging" > .env
echo "API_BASE_URL=https://monks-be-production.up.railway.app" >> .env
echo "Environment set to: staging"
echo "API Base URL: https://monks-be-production.up.railway.app"

# Generate code
echo "🔧 Generating code..."
if ! dart run build_runner build --delete-conflicting-outputs; then
    echo "❌ Failed to generate code"
    exit 1
fi

# Build for web
echo "🏗️ Building for web..."
if ! flutter build web --release; then
    echo "❌ Failed to build web"
    exit 1
fi

echo "✅ Build complete! Output in build/web/"
