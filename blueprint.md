# Volkswagen App Blueprint

## Overview

This application provides information about classic Volkswagen models, including details about their history, production, and technical specifications. It also includes a VIN decoder to identify specific vehicle information.

## Features & Design

### Implemented Features:

*   **Model Information:** Displays a comprehensive list of classic Volkswagen models with detailed information and images.
*   **VIN Decoder:** Allows users to decode a 17-digit VIN to retrieve model and year information.
*   **Plant Information:** Shows the location of Volkswagen production plants on a map.
*   **Localization:** The application supports multiple languages.
*   **Remote Data Loading:** The application fetches data from a remote GitHub repository, with a local fallback for offline use.

### Architecture & Design:

*   **State Management:** The application uses a simple service-based architecture with `ChangeNotifier` and `Provider` for state management.
*   **Data Handling:** Data is loaded from JSON files. The application now prioritizes loading data from a remote repository, falling back to local assets if the remote data is unavailable.
*   **Code Structure:** The code is organized by feature into `models`, `services`, `screens`, and `widgets` folders.

## Current Task: Remote Data Fetching

### Plan:

1.  **Add `http` package:** Add the `http` package to the `pubspec.yaml` file to enable HTTP requests.
2.  **Modify `VWService`:**
    *   Create a generic function `_loadJsonData` to handle fetching data from the remote repository with a local fallback.
    *   Update `_loadModels` and `_loadPlants` to use the new `_loadJsonData` function.
3.  **Modify `VinService`:**
    *   Implement the same `_loadJsonData` function to fetch `vin_data.json` from the remote repository.
    *   Update the `init` method to use the new data loading logic.

### Execution:

*   [x] Added the `http` package.
*   [x] Modified `lib/services/vw_service.dart` to fetch `db_*.json` and `plants.json` from the remote repository.
*   [x] Modified `lib/services/vin_service.dart` to fetch `vin_data.json` from the remote repository.
*   [x] Ensured that the application falls back to local assets if the remote data is unavailable.
*   [x] Created this `blueprint.md` file to document the project.
