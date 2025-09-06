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
    curl -L -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.5-stable.tar.xz
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

# SDK version is already compatible in pubspec.yaml
echo "✅ SDK version is compatible with Flutter 3.24.5"

# Get dependencies
echo "📦 Getting dependencies..."
if ! flutter pub get; then
    echo "❌ Failed to get dependencies"
    exit 1
fi

# Set environment to staging
echo "🌍 Setting environment to staging..."
if ! ./scripts/set_env.sh staging; then
    echo "❌ Failed to set environment"
    exit 1
fi

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
