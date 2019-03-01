# MeasureButton

* Button (toggle) to en/disable certain `ol.interaction`s and `ol.layer`s to measure a distance, a polygonal area or angles

* [Code](https://github.com/terrestris/react-geo/blob/master/src/Button/MeasureButton/MeasureButton.jsx)

[![](../screenshots/measure_button.png)](../screenshots/measure_button.png)

```javascript
import React, { Component } from 'react';

import './App.css';
import 'ol/ol.css';
import 'antd/dist/antd.css';
import './react-geo.css';

import OlMap from 'ol/Map';
import OlView from 'ol/View';
import OlLayerTile from 'ol/layer/Tile';
import OlSourceOsm from 'ol/source/OSM';

import {
  MapComponent,
  NominatimSearch,
  MeasureButton,
  Titlebar
} from '@terrestris/react-geo';


const layer = new OlLayerTile({
  source: new OlSourceOsm()
});

const center = [ 788453.4890155146, 6573085.729161344 ];

const map = new OlMap({
  view: new OlView({
    center: center,
    zoom: 16,
  }),
  layers: [layer]
});

class App extends Component {
  render() {
    return (
      <div className="App">
        <Titlebar className="titlebar" tools={[
            <NominatimSearch
              key="search"
              map={map}
            />,
            <MeasureButton
              key="measureButton"
              name="line"
              map={map}
              measureType="line"
              icon="pencil"
            >
              Strecke messen
            </MeasureButton>
          ]}>
          react-geo-app
        </Titlebar>
        <MapComponent
          map={map}
        />
      </div>
    );
  }
}

export default App;
```
