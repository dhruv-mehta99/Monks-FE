#!/bin/bash

# Flutter build script for Vercel
set -e

echo "🚀 Starting Flutter build for Vercel..."

# Install Flutter
echo "📦 Installing Flutter..."
curl -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.16.9-stable.tar.xz
tar xf flutter.tar.xz
export PATH="$PWD/flutter/bin:$PATH"

# Verify Flutter installation
echo "✅ Flutter version:"
flutter --version

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
