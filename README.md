# react-native-sectioned-slider

An iOS 11 Control Center inspired Slider for **React Native** implemented natively using [LeonardoCardoso/SectionedSlider](https://github.com/LeonardoCardoso/SectionedSlider).

## Install

Install via [npm](npmjs.org/packages/react-native-sectioned-slider):

```
npm install react-native-sectioned-slider
```

Currently only **iOS** is supported, if you want **Android** support please [create a pull request]().

<table>
  <tr>
    <th>Light</th>
    <th>Dark</th>
  </tr>
  <tr>
    <td><img src="https://github.com/mrousavy/react-native-sectioned-slider/raw/master/img/light.png" alt="iOS Demo Screenshot with Light Colors"></td>
    <td><img src="https://github.com/mrousavy/react-native-sectioned-slider/raw/master/img/dark.png" alt="iOS Demo Screenshot with Dark Colors"></td>
  </tr>
</table>


## Usage

See the [example](example/) App for a full usage example.

```jsx
// View
  <SectionedSlider
    style={styles.slider}
    sections={10}
    selectedSection={selected}
    onSelectedSectionChange={(s) => setSelected(s)}
    sliderColor="grey"
    sliderBackgroundColor="darkgrey"
  />

// Styles
  slider: {
    backgroundColor: 'transparent',
    width: 300,
    height: 500,
  },
```

<table>
  <tr>
    <th>Name</th>
    <th>Type</th>
    <th>Explanation</th>
    <th>Required</th>
    <th>Default Value</th>
  </td>
  <tr>
    <td><code>sections</code></td>
    <td><code>number</code></td>
    <td>The count of sections in this Slider. Must be between <code>2</code> and <code>20</code>.</td>
    <td>✅</td>
    <td><code>10</code></td>
  </tr>
  <tr>
    <td><code>selectedSection</code></td>
    <td><code>number</code></td>
    <td>The currently selected section. Must be between <code>0</code> and <code>{sections}</code>.</td>
    <td>❌</td>
    <td><code>2</code></td>
  </tr>
  <tr>
    <td><code>onSelectedSectionChange</code></td>
    <td><code>(section: number) => void</code></td>
    <td>An event for when the <code>selectedSection</code> changes.</td>
    <td>❌</td>
    <td><code>undefined</code></td>
  </tr>
  <tr>
    <td><code>sliderColor</code></td>
    <td><code>color</code></td>
    <td>The Slider's selected sections' color</td>
    <td>❌</td>
    <td><code>undefined</code></td>
  </tr>
  <tr>
    <td><code>sliderBackgroundColor</code></td>
    <td><code>color</code></td>
    <td>The Slider's background (unselected sections) color</td>
    <td>❌</td>
    <td><code>undefined</code></td>
  </tr>
  <tr>
    <td>All <code>View</code> props</td>
    <td><code>ViewProps</code></td>
    <td>All properties from the React Native <code>View</code>. Use <code>style.backgroundColor</code> to change the black background! (or make it smoothly transparent)</td>
    <td>❌</td>
    <td><code>{}</code></td>
  </tr>
</table>


## Resources

* iOS Sectioned Slider by https://github.com/LeonardoCardoso/SectionedSlider

