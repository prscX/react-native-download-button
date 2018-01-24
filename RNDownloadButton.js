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
      return <TouchableWithoutFeedback onPress={this._onPress}>
          <DownloadButton style={{ width: this.props.size, height: this.props.size }} props={{ size: this.props.size, lineWidth: this.props.lineWidth, tickColor: this.props.tickColor, tintColor: this.props.tintColor, backgroundColor: this.props.backgroundColor }} startAnimation={this.state.start} progress={this.props.progress} reset={this.props.reset} />
       </TouchableWithoutFeedback>
    } else if (Platform.OS === "android") {
      return <TouchableWithoutFeedback onPress={this._onPress}>
          <DownloadButton style={{ width: this.props.size, height: this.props.size }} startAnimation={this.state.start} progress={this.props.progress} reset={this.props.reset} lineWidth={this.props.lineWidth} tickColor={this.props.tickColor} tintColor={this.props.tintColor} backgroundColor={this.props.backgroundColor} />
        </TouchableWithoutFeedback>;
    }
  }
}

RNDownloadButton.propTypes = {
  ...ViewPropTypes,

  startAnimation: PropTypes.bool,
  progress: PropTypes.number,
  reset: PropTypes.bool,
  props: PropTypes.object,
  lineWidth: PropTypes.number,
  tickColor: PropTypes.string,
  tintColor: PropTypes.string,
  backgroundColor: PropTypes.string
};

RNDownloadButton.defaultProps = {
  startAnimation: false,
  reset: false,
  lineWidth: 2
};

const DownloadButton = requireNativeComponent(
  "RNDownloadButton",
  RNDownloadButton,
  {
    nativeOnly: { }
  }
);

export default RNDownloadButton;
