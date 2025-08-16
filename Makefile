.PHONY: gen dev build-web clean

gen:
	flutter pub run build_runner build --delete-conflicting-outputs

watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

dev:
	flutter run -d chrome

build-web:
	flutter build web

clean:
	flutter clean
	flutter pub get
