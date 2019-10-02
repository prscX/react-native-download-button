
<h1 align="center">


<p align="center">
  <a href="https://www.npmjs.com/package/react-native-download-button"><img src="http://img.shields.io/npm/v/react-native-download-button.svg?style=flat" /></a>
  <a href="https://github.com/prscX/react-native-download-button"><img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" /></a>
  <a href="https://github.com/prscX/react-native-download-button#License"><img src="https://img.shields.io/npm/l/react-native-download-button.svg?style=flat" /></a>
</p>


    ReactNative: Native Download Button (Android/iOS)

If this project has helped you out, please support us with a star 🌟
</h1>

This library is ReactNative bridge around native libraries:


| **Android: [fenjuly/ArrowDownloadButton](https://github.com/fenjuly/ArrowDownloadButton)**             |
| ----------------- |
| <img src="https://github.com/fenjuly/ArrowDownloadButton/raw/master/screenshots/arrowdownloadbutton.gif" />                  |

| **iOS: [elbryan/FFCircularProgressView](https://github.com/elbryan/FFCircularProgressView)**             |
| ----------------- |
| <img src="https://camo.githubusercontent.com/9030298750a4792e8e8bdec30219baa644afaf75/68747470733a2f2f7261772e6769746875622e636f6d2f656c627279616e2f464643697263756c617250726f6772657373566965772f6d61737465722f4d656469612f73616d706c652e676966" />                  |



## 📖 Getting started

`$ npm install react-native-download-button --save`

## **RN60 >= RNDB V1 >**

> RN60 above please use `react-native-download-button` V1 and above

- **iOS**

> **iOS Prerequisite:** Please make sure `CocoaPods` is installed on your system

	- Add the following to your `Podfile` -> `ios/Podfile` and run pod update:


```
  use_native_modules!

  pod 'RNDownloadButton', :path => '../node_modules/react-native-download-button/ios'
```

- **Android**


## **RN60 < RNAT V1 <**

> RN60 below please use `react-native-app-tour` V.0.*


`react-native link react-native-download-button`

## 💻 Usage

```javascript
import RNDownloadButton from 'react-native-download-button';

// TODO: What to do with the module?
<RNDownloadButton size={300} progress={this.state.progress} reset={this.state.reset} onPress={this._onPress} />
```

## 💡 Props

| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `startAnimation`       | `bool`     |         | To start the downloader animation
| `progress`      | `int`     |         | Set the progress of downloader progress bar
| `reset`       | `bool`     |         | Reset the downloader to it's inital state                                                            
| `iOS: tintColor`       | `string`     |         | Color for setting tint color           
| `iOS: tickColor`       | `string`     |         | Color for setting tick color           
| `android: backgroundColor`       | `string`    | | Color for setting background color                     
|


## ✨ Credits

- Android lib [fenjuly/ArrowDownloadButton](https://github.com/fenjuly/ArrowDownloadButton)
- iOS lib [elbryan/FFCircularProgressView](https://github.com/elbryan/FFCircularProgressView)

## 🤔 How to contribute
Have an idea? Found a bug? Please raise to [ISSUES](https://github.com/prscX/react-native-download-button/issues).
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.

## 💫 Where is this library used?
If you are using this library in one of your projects, add it in this list below. ✨


## 📜 License
This library is provided under the Apache License.

RNDownloadButton @ [prscX](https://github.com/prscX)

## 💖 Support my projects
I open-source almost everything I can, and I try to reply everyone needing help using these projects. Obviously, this takes time. You can integrate and use these projects in your applications for free! You can even change the source code and redistribute (even resell it).

However, if you get some profit from this or just want to encourage me to continue creating stuff, there are few ways you can do it:
* Starring and sharing the projects you like 🚀
* If you're feeling especially charitable, please follow [prscX](https://github.com/prscX) on GitHub.

  <a href="https://www.buymeacoffee.com/prscX" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

  Thanks! ❤️
  <br/>
  [prscX.github.io](https://prscx.github.io)
  <br/>
  </ Pranav >