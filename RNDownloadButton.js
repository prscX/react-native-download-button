import React, { Component } from "react";
import { StyleSheet, ViewPropTypes, Platform, TouchableWithoutFeedback } from "react-native";
import PropTypes from "prop-types";

import { requireNativeComponent } from "react-native";

class RNDownloadButton extends Component {
  constructor (props) {
    super(props)

    this.state = {
      start: this.props.start
    }
  }

  startAnimation = () => {
    this.setState({
      start: true
    })
  }

  _onPress = () => {
    this.props.onPress && this.props.onPress()

    this.startAnimation()
  }

  render() {
    if (Platform.OS === "ios") {
      return <DownloadButton />;
    } else if (Platform.OS === "android") {
      return <TouchableWithoutFeedback onPress={this._onPress}>
          <DownloadButton style={{ width: this.props.size, height: this.props.size }} startAnimation={this.state.start} progress={this.props.progress} reset={this.props.reset} />
        </TouchableWithoutFeedback>;
    }
  }
}

RNDownloadButton.propTypes = {
  ...ViewPropTypes,

  startAnimation: PropTypes.bool,
  progress: PropTypes.number,
  reset: PropTypes.bool
};

RNDownloadButton.defaultProps = {
  startAnimation: false,
  reset: false
};

const DownloadButton = requireNativeComponent(
  "RNDownloadButton",
  RNDownloadButton,
  {
    nativeOnly: { }
  }
);

export default RNDownloadButton;
