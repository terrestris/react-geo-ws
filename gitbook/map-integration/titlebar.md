# Titlebar

* Class representing the titlebar. Usually used in a panel.
  * Text content
  * `tools` prop: Buttons that should be included in toolbar, e.g. close.

* [Code](https://github.com/terrestris/react-geo/blob/master/src/Panel/Titlebar/Titlebar.jsx)

[![](../screenshots/titlebar.png)](../screenshots/titlebar.png)

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
        <Titlebar className="titlebar">
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
