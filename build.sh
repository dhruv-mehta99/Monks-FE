#!/bin/bash

# Flutter build script for Vercel
set -e

echo "🚀 Starting Flutter build for Vercel..."

# Install Flutter (latest stable)
echo "📦 Installing Flutter..."
curl -L -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.5-stable.tar.xz
tar xf flutter.tar.xz
export PATH="$PWD/flutter/bin:$PATH"

# Fix git ownership issues
echo "🔧 Fixing git ownership issues..."
git config --global --add safe.directory /vercel/path0/flutter
git config --global --add safe.directory /vercel/path0/flutter/bin/cache/dart-sdk

# Verify Flutter installation
echo "✅ Flutter version:"
flutter --version

# Check Dart version
echo "✅ Dart version:"
dart --version

# Temporarily adjust SDK requirement for build (Flutter 3.24.5 has Dart 3.5+)
echo "🔧 Adjusting SDK requirement for build..."
sed -i 's/sdk: '\''>=3.9.0 <4.0.0'\''/sdk: '\''>=3.5.0 <4.0.0'\''/g' pubspec.yaml

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get

# Generate code
echo "🔧 Generating code..."
dart run build_runner build

# Set environment to staging
echo "🌍 Setting environment to staging..."
./scripts/set_env.sh staging

# Regenerate environment files
echo "🔄 Regenerating environment files..."
dart run build_runner build

# Build for web
echo "🏗️ Building for web..."
flutter build web --release

echo "✅ Build complete! Output in build/web/"
