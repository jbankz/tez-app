
---

# Tez App

This Flutter application was developed as part of a technical interview process. The app allows users to log in with a dummy credential, interact with a product list (favorite/unfavorite and view details), and retrieves basic device information from iOS using a native method channel.

The app was built following **Clean Architecture** design principles and utilizes **Riverpod** for state management to ensure scalability and maintainability.

---

## Features

### Authentication

- Users can log in with a fixed credential:
  - **Username**: `emilys`
  - **Password**: `emilyspass`

### Product Management

- **Products**: Returns a list of products.
- **Favorite/Unfavorite**: Mark products as favorites or remove them from the favorites list.
- **Product Details**: View detailed information about individual products.
- **Profile**: View detailed information about user.

### Device Information

- On iOS, basic device information (e.g., model, OS version) is retrieved using Swift via a Flutter **Method Channel**.

---

## Project Structure

The project was developed using **Clean Architecture**, organized into layers for better separation of concerns:

1. **Presentation Layer**: Includes widgets and screens for the UI.
2. **Application Layer**: Contains state management using **Riverpod**.
3. **Domain Layer**: Defines business logic and use cases.
4. **Data Layer**: Manages repositories and data sources.

---

## Prerequisites

Ensure you have the following installed before running the app:

- **Flutter** (v3.0.0 or above)
- **Dart** (v2.17.0 or above)

---

## Getting Started

Follow these steps to set up and run the application:

### 1. Clone the Repository

```bash
git clone <https://github.com/jbankz/tez-app.git>
cd <tez-app>
```

### 2. Install Dependencies

Run the following command to fetch all dependencies:

```bash
flutter pub get
```

### 3. Generate Necessary Files

The app uses generated files for data models and Riverpod providers. Run the following command to generate these files:

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4. Run the Application

To run the app on your connected device or simulator:

```bash
flutter run
```

---

## Technical Choices

### State Management

- **Riverpod**: Chosen for its flexibility, reactivity, and ability to handle state in a testable and scalable manner.

### Architecture

- **Clean Architecture**: Ensures the app is modular, maintainable, and testable. This design pattern separates the UI, business logic, and data layers.

### Native Integration

- **Method Channel**: Used to bridge Flutter and native iOS code written in Swift for retrieving device information.

---

## Method Channel Implementation

The `DeviceInfoManager` class interacts with a Swift method channel to retrieve iOS-specific information. Below is an example of the Swift implementation:

```swift
import UIKit
import Flutter

class DeviceInfo: NSObject {
    static func getDeviceInfo() -> [String: Any] {
        let device = UIDevice.current
        return [
            "modelName": device.model,
            "systemVersion": device.systemVersion,
            "name": device.name,
            "isBatteryMonitoringEnabled": device.isBatteryMonitoringEnabled,
        ]
    }
}

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let controller = window?.rootViewController as! FlutterViewController
        let deviceInfoChannel = FlutterMethodChannel(name: "com.example/device_info", binaryMessenger: controller.binaryMessenger)

        deviceInfoChannel.setMethodCallHandler { (call, result) in
            if call.method == "getDeviceInfo" {
                let deviceInfo = DeviceInfo.getDeviceInfo()
                result(deviceInfo)
            } else {
                result(FlutterMethodNotImplemented)
            }
        }

        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
```

---

## Challenges Faced and Solutions

### 1. **Handling Method Channels for iOS Device Information**

**Challenge**: The integration of native Swift code via Method Channels to retrieve device information was initially challenging due to platform-specific nuances.
**Solution**: Extensive testing was conducted to ensure the data returned from Swift was correctly parsed and passed to Flutter. A simple method channel was created to communicate between Flutter and Swift.

### 2. **State Management with Riverpod**

**Challenge**: Riverpod's learning curve and the need to manage multiple asynchronous operations (e.g., fetching product data) initially created confusion around provider usage.
**Solution**: I referred to the Riverpod documentation and examples to learn best practices. I also broke down the state into smaller pieces and used **FutureProvider** for asynchronous operations to streamline state management.

### 3. **Managing Data Model Generation**

**Challenge**: Generating data models with **build_runner** and integrating them into the project created issues with conflicting outputs during regeneration.
**Solution**: I resolved the conflicts by using the `--delete-conflicting-outputs` flag to clean up any old generated files before regenerating, and ensured the models were structured correctly.

### 4. **UI and Performance Optimization**

**Challenge**: Initial UI components were static and lacked interactivity, and performance issues were observed when dealing with larger lists of products.
**Solution**: I optimized the UI by implementing **ListView.builder** for dynamic rendering of product lists. I also applied **Flutter’s built-in performance profiling tools** to identify and resolve issues related to rendering.

---

## Future Improvements

- Implement proper authentication with a backend service.
- Add product categories and search functionality.
- Enhance UI/UX with animations and modern design principles.
- Add tests for UI, unit, and integration testing.

---

## Feedback and Contributions

This project was created as part of a technical evaluation. Feedback is highly appreciated, and contributions are welcome for further improvement.

---

## License

This project is licensed under the MIT License.

---
