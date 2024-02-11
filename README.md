# Aamar_task


## Link For Apk 
https://drive.google.com/drive/folders/10a5L_YZ7TUoti9lKMxCvoWl2lZWrurUB?usp=sharing
## Demo For Ios 

https://github.com/marawan231/aamar_task/assets/81522801/3a2610c2-5b39-45f8-b674-d9b4cdd0d474

## Demo For Android 
https://github.com/marawan231/aamar_task/assets/81522801/e6504505-5da8-4b35-964f-2b826f1aadc5




## Overview
This Flutter application fetches a list of posts from the JSONPlaceholder API and displays them in a user-friendly manner. It includes features such as fetching data, displaying a list of posts with pagination, post details view, search functionality, and optional features like saving favorite posts locally.

## Project Structure
The project is organized based on the Clean Architecture principles, separating the code into layers with distinct responsibilities:

### Presentation:
Contains the UI code, including widgets, screens, and Cubit for state management.

### Domain:

Holds business logic and entities, defining the core functionality of the application.

### Data:
Manages data sources, repositories, and interfaces for interacting with external services.

## Tools and Packages Used
### Architecture
Clean Architecture: The project adheres to the Clean Architecture pattern, promoting separation of concerns and maintainability.
## Network Requests
### Retrofit:
Utilized for making web service calls, Retrofit simplifies API requests and ensures type safety.
## Local Data Storage
### Shared Preferences:
Chosen for local data storage, Shared Preferences provides a straightforward key-value storage mechanism.
## State Management
### Cubit:
Employed for state management, Cubit simplifies the management and updating of the application's state.
## Testing
### Mockito:
Integrated for mocking and testing purposes, Mockito facilitates the creation of mock objects and verifies interactions.
## Code Generation
### json_serializable and freezed: 
Used for code generation, these tools automate the creation of serialization/deserialization code and enhance the usage of immutable classes.

##How to Run the App
- Make sure you have Flutter and Dart installed on your machine.

- Clone the repository and navigate to the project directory.

_ Run the following command to install dependencies:
  flutter pub get



- Connect a device or start an emulator.
- Run the app:
 flutter run




## Additional Packages
dio: HTTP client for making API requests.

dio_smart_retry: Adds smart retry functionality to Dio for handling network issues.

equatable: Simplifies equality comparisons for Dart objects.

flutter_bloc: Implements the BLoC (Business Logic Component) architecture for state management.

flutter_offline: Provides widgets for handling offline and online states.

flutter_screenutil: A Flutter plugin for responsive UI design.

get_it: A simple service locator for Dart and Flutter projects.

logger: A simple logging package for Dart and Flutter.

pretty_dio_logger: Logs Dio HTTP requests in a readable format.

retrofit_generator and retrofit: Generates code for making API requests using Retrofit style.

shared_preferences: For persisting key-value data locally.

internet_connection_checker: Checks the internet connection status.

lottie: Renders Adobe After Effects animations exported as JSON.

shimmer: Adds shimmer effect to Flutter applications.

flutter_native_splash: Customizes the splash screen appearance.





