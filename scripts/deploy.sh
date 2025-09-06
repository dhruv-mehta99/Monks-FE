#!/bin/bash

# Deployment script for Monks Frontend
# Usage: ./scripts/deploy.sh [vercel|netlify|github]

PLATFORM=${1:-vercel}

echo "🚀 Deploying Monks Frontend to $PLATFORM..."

case $PLATFORM in
  vercel)
    echo "📦 Building for staging environment..."
    make build-staging

    echo "🌐 Deploying to Vercel..."
    if command -v vercel &> /dev/null; then
      vercel --prod
    else
      echo "❌ Vercel CLI not found. Install with: npm i -g vercel"
      echo "📝 Or deploy via: https://vercel.com/new"
    fi
    ;;

  netlify)
    echo "📦 Building for staging environment..."
    make build-staging

    echo "🌐 Deploying to Netlify..."
    if command -v netlify &> /dev/null; then
      netlify deploy --prod --dir=build/web
    else
      echo "❌ Netlify CLI not found. Install with: npm i -g netlify-cli"
      echo "📝 Or drag & drop build/web folder to: https://app.netlify.com/drop"
    fi
    ;;

  github)
    echo "📦 Building for staging environment..."
    make build-staging

    echo "🌐 Deploying to GitHub Pages..."
    echo "📝 Manual steps:"
    echo "1. Push build/web contents to gh-pages branch"
    echo "2. Enable GitHub Pages in repository settings"
    echo "3. Set source to gh-pages branch"
    ;;

  *)
    echo "❌ Unknown platform: $PLATFORM"
    echo "Usage: ./scripts/deploy.sh [vercel|netlify|github]"
    exit 1
    ;;
esac

echo "✅ Deployment complete!"
