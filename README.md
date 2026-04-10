# BMI Calculator

A Flutter app that estimates **Body Mass Index (BMI)** from height and weight, shows a category label, and displays short informational text on the result screen.

## Features

- **Metric inputs**: height in metres (slider, roughly 1.0–2.5 m) and weight in kilograms (stepper buttons).
- **Gender and age** are selectable on the home screen for context in the UI; the numeric BMI and category use **only height and weight** (see [lib/domain/bmi.dart](lib/domain/bmi.dart)).
- **Result screen**: BMI value (two decimal places), category name, and category-specific advice text.
- **Material Design** theme with a blue seed color and named routes (`/` → home, `/result` → result).

## How BMI is calculated

BMI uses the standard formula with **kilograms** and **metres**:

\[
\text{BMI} = \frac{\text{weight (kg)}}{\text{height (m)}^2}
\]

Categories are determined by comparing the result to upper bounds (same logic as `BMICategory` in [lib/core/enums.dart](lib/core/enums.dart)):

| BMI range      | Category        |
|----------------|-----------------|
| &lt; 18.5      | Underweight     |
| 18.5 – &lt; 25 | Normal weight   |
| 25 – &lt; 30   | Overweight      |
| 30 – &lt; 35   | Obesity class I |
| 35 – &lt; 40   | Obesity class II |
| ≥ 40           | Obesity class III |

These cutoffs match common adult screening bands as implemented in the app; they are not a substitute for individual medical assessment.

## Disclaimer

BMI is a general screening measure. It does not diagnose medical conditions. This app is for informational purposes only. For personal health decisions, speak with a qualified health professional.

## Requirements

- [Flutter](https://docs.flutter.dev/get-started/install) with Dart **^3.11.4** (see [pubspec.yaml](pubspec.yaml)).

## Getting started

From the project root:

```bash
flutter pub get
flutter run
```

You can run on a connected device or emulator (Android, iOS, desktop, or web), depending on your Flutter setup.

## Tests

```bash
flutter test
```

The widget test performs a smoke check that the home screen shows the **BMI Calculator** title ([test/widget_test.dart](test/widget_test.dart)).

## Project layout

| Path | Role |
|------|------|
| `lib/main.dart` | App entry |
| `lib/app.dart` | `MaterialApp`, routes, theme |
| `lib/domain/` | BMI calculation and state |
| `lib/core/` | Enums, route map |
| `lib/screens/home/` | Home inputs (gender, height, weight, age) |
| `lib/screens/result/` | Result page |
| `lib/widgets/` | Shared UI (e.g. cards, labels) |
| `test/` | Widget tests |
