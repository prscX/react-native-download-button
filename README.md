
# React Native Download Button: Android/iOS

React Native Bridge for Android: [fenjuly/ArrowDownloadButton](https://github.com/fenjuly/ArrowDownloadButton) & iOS: [elbryan/FFCircularProgressView](https://github.com/elbryan/FFCircularProgressView)

#### Android
![](https://github.com/fenjuly/ArrowDownloadButton/raw/master/screenshots/arrowdownloadbutton.gif)

#### iOS
![](https://camo.githubusercontent.com/9030298750a4792e8e8bdec30219baa644afaf75/68747470733a2f2f7261772e6769746875622e636f6d2f656c627279616e2f464643697263756c617250726f6772657373566965772f6d61737465722f4d656469612f73616d706c652e676966)

Before we dive into on how to use this library. We would like to thank all the contributor of [fenjuly/ArrowDownloadButton](https://github.com/fenjuly/ArrowDownloadButton) & [elbryan/FFCircularProgressView](https://github.com/elbryan/FFCircularProgressView) for providing such a awesome nice, cool library


## Getting started

`$ npm install react-native-download-button --save`

`react-native link react-native-download-button`

## Usage

```javascript
import RNDownloadButton from 'react-native-download-button';

// TODO: What to do with the module?
<RNDownloadButton size={300} progress={this.state.progress} reset={this.state.reset} onPress={this._onPress} />
```

## Props

| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `startAnimation`       | `bool`     |         | To start the downloader animation
| `progress`      | `int`     |         | Set the progress of downloader progress bar
| `reset`       | `bool`     |         | Reset the downloader to it's inital state                                                            
| `iOS: tintColor`       | `string`     |         | Color for setting tint color           
| `iOS: tickColor`       | `string`     |         | Color for setting tick color           
| `android: backgroundColor`       | `string`    | | Color for setting background color                     
|


## Credits

- Android lib [fenjuly/ArrowDownloadButton](https://github.com/fenjuly/ArrowDownloadButton)
- iOS lib [elbryan/FFCircularProgressView](https://github.com/elbryan/FFCircularProgressView)

## Contribution
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.


## License
Copyright @2017 Pranav Raj Singh Chauhan

RNDownloadButton is provided under the MIT License.



## Other Contributions
- React Native - Spruce: [react-native-spruce](https://github.com/prscX/react-native-spruce)

![Screenshots](https://github.com/willowtreeapps/spruce-ios/raw/master/imgs/extensibility-tests.gif)

- React Native - App Tour Library: [react-native-taptargetview](https://github.com/prscX/react-native-taptargetview) & [react-native-material-showcase-ios](https://github.com/prscX/react-native-material-showcase-ios)

![Screenshots](https://github.com/KeepSafe/TapTargetView/raw/master/.github/video.gif)
![Screenshots](https://github.com/aromajoin/material-showcase-ios/raw/master/art/material-showcase.gif?raw=true)

- React Native - Shine Button: [react-native-shine-button](https://github.com/prscX/react-native-shine-button)

![Screenshots](https://raw.githubusercontent.com/ChadCSong/ShineButton/master/demo_shine_others.gif)

- React Native Iconic: [react-native-iconic](https://github.com/prscX/react-native-iconic)
![Screenshots](https://camo.githubusercontent.com/b18993cbfe91de8abdc0019dc9a6cd44707eec21/68747470733a2f2f6431337961637572716a676172612e636c6f756466726f6e742e6e65742f75736572732f3338313133332f73637265656e73686f74732f313639363538302f766266706f70666c6174627574746f6e332e676966)

- React Native Siri Wave View: [react-native-siri-wave-view](https://github.com/prscX/react-native-siri-wave-view)

![](https://cdn.dribbble.com/users/341264/screenshots/2203511/wave.gif)

- Visual Code Essential Plugins: [vs-essential-plugins](https://github.com/prscX/vs-essential-plugins)

![Screenshots](https://pbs.twimg.com/profile_images/922911523328081920/jEKFRPKV_400x400.jpg)

- Prettier Pack: [prettier-pack](https://github.com/prscX/prettier-pack)

![Screenshots](https://raw.githubusercontent.com/prettier/prettier-logo/master/images/prettier-banner-light.png)
