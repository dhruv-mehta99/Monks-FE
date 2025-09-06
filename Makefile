.PHONY: help clean build test format lint analyze

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

clean: ## Clean build artifacts
	flutter clean
	rm -rf build/
	rm -rf .dart_tool/

build: ## Build the project (local environment)
	./scripts/set_env.sh local
	dart run build_runner build
	flutter build web

build-staging: ## Build for staging environment
	./scripts/set_env.sh staging
	dart run build_runner build
	flutter build web

build-prod: ## Build for production environment
	./scripts/set_env.sh prod
	dart run build_runner build
	flutter build web

test: ## Run tests
	flutter test

format: ## Format all Dart files
	dart format lib/ test/

lint: ## Run linting
	flutter analyze

analyze: ## Run full analysis with detailed output
	flutter analyze --no-fatal-infos

fix: ## Auto-fix linting issues where possible
	dart fix --apply

generate: ## Generate code (Freezed, Riverpod, etc.)
	flutter packages pub run build_runner build --delete-conflicting-outputs

watch: ## Watch for changes and regenerate code
	flutter packages pub run build_runner watch --delete-conflicting-outputs

dev: ## Start development server (local environment)
	./scripts/set_env.sh local
	dart run build_runner build
	flutter run -d chrome --web-port 4001

staging: ## Start app in staging environment
	./scripts/set_env.sh staging
	dart run build_runner build
	flutter run -d chrome --web-port 4001

prod: ## Start app in production environment
	./scripts/set_env.sh prod
	dart run build_runner build
	flutter run -d chrome --web-port 4001

deps: ## Get dependencies
	flutter pub get

upgrade: ## Upgrade dependencies
	flutter pub upgrade

deploy: ## Deploy to Vercel (staging)
	./scripts/deploy.sh vercel

deploy-netlify: ## Deploy to Netlify (staging)
	./scripts/deploy.sh netlify

deploy-github: ## Deploy to GitHub Pages (staging)
	./scripts/deploy.sh github
