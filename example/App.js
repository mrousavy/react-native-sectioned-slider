/**
 * Sample React Native App
 *
 * adapted from App.js generated by the following command:
 *
 * react-native init example
 *
 * https://github.com/facebook/react-native
 */

import React, {useState} from 'react';
import {StyleSheet, View} from 'react-native';
import SectionedSlider from 'react-native-sectioned-slider';

export default function App() {
  const [selected, setSelected] = useState(2);

  console.log(`Selected Section: ${selected}`);
  return (
    <View style={styles.container}>
      <SectionedSlider
        style={styles.slider}
        sections={10}
        selectedSection={selected}
        sliderColor="white"
        sliderBackgroundColor="grey"
        onSelectedSectionChange={setSelected}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  slider: {
    backgroundColor: 'green',
    width: 300,
    height: 500,
  },
});
