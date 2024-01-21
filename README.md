# Flutter Future Builder Example

This Flutter project demonstrates custom future handling using the FutureBuilder widget. It fetches data from a placeholder API and displays the result accordingly.

## Getting Started

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/flutter_future_builder_example.git
    ```

2. **Navigate to the project directory:**

    ```bash
    cd flutter_future_builder_example
    ```

3. **Install dependencies:**

    ```bash
    flutter pub get
    ```

4. **Run the app:**

    ```bash
    flutter run
    ```

## Project Structure

The project has the following structure:

-   **lib/main.dart:** Main entry point of the application.
-   **lib/AppBody.dart:** Contains the implementation of the custom `AppBody` widget that uses the `FutureBuilder` to handle asynchronous data fetching.
-   **lib/Response.dart:** Defines the `Response` class to encapsulate the API response and connection status.
-   **lib/constants.dart:** Contains the definition of the `CS` enum representing different connection states.

## How it Works

1. The `main.dart` file defines the `MyApp` class, which is the main application widget.

2. The `AppBody.dart` file defines the `AppBody` widget, a stateful widget responsible for fetching data from a REST API using the `http` package. The `FutureBuilder` widget is utilized to handle the asynchronous operation.

3. The `Response.dart` file defines the `Response` class, representing the structure of the API response, including data, status, and connection state.

4. The `constants.dart` file contains the definition of the `CS` enum, which represents different connection states such as `done`, `fetching`, and `error`.

## Custom Future Handling

The custom future handling is implemented in the `fetchData` method of the `_AppBodyState` class. It demonstrates how to use the `http` package to make a GET request to a REST API, handle the response, and update the UI accordingly.

The `Response` class encapsulates the API response, and the `CS` enum represents the different connection states. The UI displays a loading indicator while data is being fetched, shows the data if the operation is successful, and displays an error message in case of failure.

Feel free to explore and modify the code to suit your needs. Happy coding!
