# 👨‍💻 Flutter User List App with MVVM + Provider

This Flutter project demonstrates how to build a **User List App** that fetches data from a REST API
using the **MVVM (Model-View-ViewModel)** architecture pattern. It uses the **Provider** package for
clean and reactive state management, and integrates **HTTP networking** for fetching real data.

---

## 📚 Table of Contents

- [📋 Overview](#-overview)
- [🧱 Architecture](#-architecture)
- [🚀 Installation](#-installation)
- [▶️ Running the App](#️-running-the-app)
- [🧪 Features](#-features)
- [📦 Firebase App Distribution](#-firebase-app-distribution)
- [🧑‍💻 Author](#-author)

---

## 📋 Overview

The app fetches and displays a list of users from the placeholder API:
https://jsonplaceholder.typicode.com/users

Each user includes:

- Name
- Email
- Company
- Location (which opens in Maps on tap)

---

## 🧱 Architecture

### MVVM Breakdown

| Layer         | Purpose                                             |
|---------------|-----------------------------------------------------|
| **Model**     | Defines user data structures and handles API logic  |
| **ViewModel** | Connects the view to the model and manages UI state |
| **View**      | Builds UI and reacts to changes in ViewModel        |

### 🔌 State Management

The app uses [`provider`](https://pub.dev/packages/provider) to manage dependency injection and
state changes.

---

## 🚀 Installation

### ✅ Prerequisites

- Flutter SDK (3.0 or later)
- Dart SDK
- Android Studio / VS Code / Xcode
- Firebase CLI (for distribution)

### 📦 Setup

1. **Clone the repository**

```bash
git clone https://github.com/TandohAnthonyNwiAckah/mvvm_provider.git
cd mvvm_provider
```

2. **Install dependencies**

```bash
   flutter pub get
```

3. **Running the App**

```bash
flutter run
```

### 🧪 Features

    ✅ Fetch users from a REST API

    ✅ Open user location in Google Maps

    ✅ Error and loading state management

    ✅ MVVM structure

    ✅ Modular services and utils

### 📦 Firebase App Distribution

    Firebase distribution is optional and set up through GitHub Actions.

## 🔧 Requirements

    Firebase project set up

    Firebase App Distribution enabled

    google-services.json (Android) and/or GoogleService-Info.plist (iOS)

    GitHub Secrets:

        FIREBASE_TOKEN

        ANDROID_APP_ID

🧑‍💻 Author
---

- **Tandoh Anthony Nwi Ackah** - [GitHub](https://github.com/TandohAnthonyNwiAckah)
- **Email** - [anthony.tandoh@tanacom.io](mailto:anthony.tandoh@tanacom.io)
- **LinkedIn** - [Tandoh Anthony Nwi Ackah](https://www.linkedin.com/in/tandoh-anthony-nwi-ackah/)




























