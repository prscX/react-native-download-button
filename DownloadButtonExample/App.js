/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';

import RNDownloadButton from 'react-native-download-button'

export default class App extends Component<{}> {
  constructor (props) {
    super(props)
    this.state = {
      reset: false,
      progress: 0
    }
  }

  _onPress = () => {
    setInterval(
      () => {
        let progress = 0
        let reset = false

        if (this.state.progress <= 100) {
          progress = this.state.progress + 5
        } else {
          reset = true
        }

        this.setState({
          reset: reset,
          progress: progress
        })
      },
      1000
    )
  }

  render() {
    return <View style={styles.container}>
        <RNDownloadButton size={300} progress={this.state.progress} reset={this.state.reset} onPress={this._onPress} />
      </View>;
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-around",
    alignItems: "center",
    backgroundColor: Platform.OS === 'ios' ? "#FFFFFF" : "#279bee"
  }
});