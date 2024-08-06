# Counter App with MVVM Architecture using Provider in Flutter

This project demonstrates a simple Flutter app following the **Model-View-ViewModel (MVVM)** architecture pattern, integrated with the **Provider** package for state management. The app is a basic counter that increments a value each time a button is pressed. This project includes a widget test to ensure the counter behaves as expected.

## Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Installation](#installation)
- [Running the App](#running-the-app)


## Overview

The application implements a simple counter where a user can increment a value by pressing a floating action button. The app is built using Flutter and adheres to the MVVM architecture pattern, with state management handled by the Provider package.

## Architecture

### MVVM Overview

- **Model**: Represents the data layer and business logic.
- **ViewModel**: Acts as a bridge between the Model and the View, managing the logic for UI updates.
- **View**: The UI layer that listens to the ViewModel for changes and renders the UI accordingly.

### Provider

The **Provider** package is used to manage state across the app, making it easier to separate concerns and maintain a clean architecture.

## Installation

### Prerequisites

- Flutter SDK (v2.0.0 or later)
- Dart SDK
- IDE (Visual Studio Code, Android Studio, etc.)

### Steps

1. Clone the repository:

    ```bash
    git clone https://github.com/TandohAnthonyNwiAckah/mvvm_provider.git
    cd flutter_mvvm_provider_counter
    ```

2. Install the dependencies:

    ```bash
    flutter pub get
    ```

## Running the App

To run the app on a connected device or emulator:

```bash
flutter run




