import React, { Component } from "react";
import PropTypes from "prop-types";
import {
  requireNativeComponent,
  UIManager,
  findNodeHandle
} from "react-native";

const COMPONENT_NAME = "SectionedSliderView";
const RNSectionedSliderView = requireNativeComponent(COMPONENT_NAME);

export default class SectionedSliderView extends Component {
  static propTypes = {
    selectedSection: PropTypes.number,
    sections: PropTypes.number,
    onSelectedSectionChange: PropTypes.func,
    sliderBackgroundColor: PropTypes.string,
    sliderColor: PropTypes.string,
  };
  _onSelectedSectionChange = event => {
    if (this.props.onSelectedSectionChange) {
      this.props.onSelectedSectionChange(event.nativeEvent.selectedSection);
    }
  };
  render() {
    const { selectedSection, sections, sliderColor, sliderBackgroundColor, style } = this.props;
    return (
      <RNSectionedSliderView
        style={style}
        selectedSection={selectedSection}
        sections={sections}
        onSelectedSectionChange={this._onSelectedSectionChange}
        sliderBackgroundColor={sliderBackgroundColor}
        sliderColor={sliderColor}
        ref={ref => this.ref = ref}
      />
    );
  }
  update = (...args) => {
    UIManager.dispatchViewManagerCommand(
      findNodeHandle(this.ref),
      UIManager[COMPONENT_NAME].Commands.updateFromManager,
      [...args]
    );
  };
}
