# NominatimSearch

* Component that provides a search field querying [nominatim search](http://wiki.openstreetmap.org/wiki/Nominatim) as geocoder
  * not limited to Nominatim search, see props `nominatimBaseUrl`

[![](../screenshots/nominatim_search.png)](../screenshots/nominatim_search.png)

```javascript
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
            >
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
