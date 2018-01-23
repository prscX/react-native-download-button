
# react-native-download-button

## Getting started

`$ npm install react-native-download-button --save`

### Mostly automatic installation

`$ react-native link react-native-download-button`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-download-button` and add `RNDownloadButton.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNDownloadButton.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNDownloadButtonPackage;` to the imports at the top of the file
  - Add `new RNDownloadButtonPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-download-button'
  	project(':react-native-download-button').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-download-button/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-download-button')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNDownloadButton.sln` in `node_modules/react-native-download-button/windows/RNDownloadButton.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Download.Button.RNDownloadButton;` to the usings at the top of the file
  - Add `new RNDownloadButtonPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNDownloadButton from 'react-native-download-button';

// TODO: What to do with the module?
RNDownloadButton;
```
  