# Tasks

## Setup and Configuration
1. Create a new Flutter project
2. Set up the project structure (datasources, repositories, BLoCs, UI)
3. Add required dependencies (Retrofit, BLoC, Hive)

## Datasources
### Remote Datasource
1. Create RemoteDatasource class
2. Configure Retrofit API client
   - Add API endpoints for fetching random cat fact and random cat image
3. Implement methods for fetching random cat fact and random cat image using Retrofit

### Local Datasource
1. Create LocalDatasource class
2. Configure Hive for storing data on the device
3. Implement methods for saving and retrieving cat facts from Hive

## Repository
1. Create Repository class
2. Combine RemoteDatasource and LocalDatasource in Repository
3. Implement methods for fetching random cat fact and random cat image, and saving and retrieving cat facts

## BLoCs
1. Create BLoC classes for managing state
   - CatFactBLoC: Manage random cat fact and image state
   - FactHistoryBLoC: Manage fact history state
2. Implement BLoC events and states

## UI
1. Create main screen (Random Fact Screen)
   - Display random cat fact and its creation date
   - Display random cat image
   - Add 'Another fact!' button with functionality to load and display new random fact and image
   - Show loading animation while fact and image are loading
   - Add 'Fact history' button that navigates to Fact History Screen
2. Create Fact History Screen
   - Display list of saved cat facts with their creation dates
3. Apply ergonomic UI design and reusable components

## Testing and Documentation
1. Write unit tests for datasources, repositories, and BLoCs
2. Write widget tests for UI components
3. Document the code and project structure

## Final Steps
1. Review and clean up the code
2. Test the app on multiple devices and screen sizes
3. Record a DEMO video of the working application
4. Upload the code to a GitHub repository
5. Share the DEMO video and GitHub repository link