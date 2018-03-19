# `MapProvider` / `mappify`

## `MapProvider`
* The `MapProvider` supplies the passed map to the React context (see also [here](https://reactjs.org/docs/context.html)) for the child elements.

## `mappify`

* The `mappify` HOC graps a map object from the context (see also [here](https://reactjs.org/docs/context.html)) and passed it as a prop to the wrapped component
* Commonly used in combination with the `MapProvider`

```
import React, { Component } from 'react';

import './App.css';
import 'ol/ol.css';
import 'antd/dist/antd.css';
import './react-geo.css';

import OlMap from 'ol/map';
import OlView from 'ol/view';
import OlLayerTile from 'ol/layer/tile';
import OlSourceOsm from 'ol/source/osm';

import {
  MapComponent,
  NominatimSearch,
  MeasureButton,
  Titlebar,
  MapProvider,
  mappify
} from '@terrestris/react-geo';

const MappfiedNominatimSearch = mappify(NominatimSearch);
const MappifiedMeasureButton = mappify(MeasureButton);
const Map = mappify(MapComponent);

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
        <MapProvider map={map}>
          <Titlebar className="titlebar" tools={[
              <MappfiedNominatimSearch
                key="search"
              />,
              <MappifiedMeasureButton
                key="measureButton"
                name="line"
                measureType="line"
                icon="pencil"
              >
                Strecke messen
              </MappifiedMeasureButton>
            ]}>
            react-geo-app
          </Titlebar>
          <Map/>
        </MapProvider>
      </div>
    );
  }
}

export default App;
```
