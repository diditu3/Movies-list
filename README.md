# Movie List App

A small practice project built with Flutter to understand basic routing, passing arguments between screens, and working with dropdown selectors. 

## What it does
* **Show Selection:** Uses a standard `DropdownButton` populated from a local map collection to switch between different featured shows.
* **Dynamic Details Preview:** Updates the main image and metadata on screen based on the selected dropdown value.
* **Screen Navigation:** Passes data maps smoothly via named routes (`ModalRoute.of(context)`) over to a secondary `DetailsPage` when clicking the "More" button.
* **Layout Playground:** Contains a `TestFile` view designed to test native columns, rows, nested expanded grids, and custom sizing behaviors.

## Project Structure
* `main.dart` - Application configuration and named routes registry map (`initialRoute` points to the test layout view).
* `Moives list.dart` - Main screen featuring hardcoded media datasets, a selection dropdown builder, and navigation triggers.
* `Details_page.dart` - Destination preview screen unpacking received routing arguments to display long summary strings and cover art.
* `Test.dart` - Isolated layout testing sandbox using colored containers.

## How to run it
1. Run `flutter pub get` to make sure dependencies match.
2. Spin up an emulator or connect a device and run `flutter run`.
