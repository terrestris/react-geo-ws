# Summary

Congratulations! You finished the react-geo-workshop!

In this workshop you learned to setup your first react-based application. Through the addition of different react-geo components such as `MapComponent`, `NominatimSearch` and `MeasureButton` you made the step from a simple `Hello World` to a fully fledged map application.

Your complete application should look something like this:

[![](../screenshots/summary.png)](../screenshots/summary.png)

And here is the complete source code:

```javascript
import React, { useState } from 'react';

import OlMap from 'ol/Map';
import OlView from 'ol/View';
import OlLayerTile from 'ol/layer/Tile';
import OlSourceOsm from 'ol/source/OSM';
import OlSourceTileWMS from 'ol/source/TileWMS';
import OlLayerGroup from 'ol/layer/Group';

import { Drawer } from 'antd';

import {
  SimpleButton,
  MapComponent,
  NominatimSearch,
  MeasureButton,
  LayerTree,
  MapContext,
  useMap
} from '@terrestris/react-geo';

import './App.css';
import 'ol/ol.css';
import 'antd/dist/antd.css';
import './react-geo.css';

const layerGroup = new OlLayerGroup({
  name: 'Layergroup',
  layers: [
    new OlLayerTile({
      source: new OlSourceOsm(),
      name: 'OSM'
    }),
    new OlLayerTile({
      name: 'SRTM30-Contour',
      minResolution: 0,
      maxResolution: 10,
      source: new OlSourceTileWMS({
        url: 'https://ows.terrestris.de/osm/service',
        params: {
          'LAYERS': 'SRTM30-Contour'
        }
      })
    }),
    new OlLayerTile({
      name: 'OSM-Overlay-WMS',
      minResolution: 0,
      maxResolution: 200,
      source: new OlSourceTileWMS({
        url: 'https://ows.terrestris.de/osm/service',
        params: {
          'LAYERS': 'OSM-Overlay-WMS'
        }
      })
    })
  ]
});

const center = [ 788453.4890155146, 6573085.729161344 ];

const olMap = new OlMap({
  view: new OlView({
    center: center,
    zoom: 16,
  }),
  layers: [layerGroup]
});

function Map() {
  const map = useMap();

  return (
    <MapComponent
      map={map}
    />
  );
};

function NominatimSearchWithMap() {
  const map = useMap();

  return (
    <NominatimSearch
      key="search"
      map={map}
      style={{
        width: '100%'
      }}
    />
  );
};

function MeasureButtonWithMap() {
  const map = useMap();

  return (
    <MeasureButton
      key="measureButton"
      name="line"
      map={map}
      measureType="line"
      iconName="pencil"
      pressedIconName="pencil"
    >
      Measure distance
    </MeasureButton>
  );
};

function LayerTreeWithMap(props) {
  const map = useMap();

  return (
    <LayerTree
      map={map}
      {...props}
    />
  );
};

function App() {
  const [visible, setVisible] = useState(false);

  const toggleDrawer = () => {
    setVisible(!visible);
  }

  return (
    <div className="App">
      <MapContext.Provider value={olMap}>
        <Map />
        <SimpleButton
          style={{position: 'fixed', top: '30px', right: '30px'}}
          onClick={toggleDrawer}
          iconName="bars"
        />
        <Drawer
          title="react-geo-application"
          placement="right"
          onClose={toggleDrawer}
          visible={visible}
          mask={false}
        >
          <NominatimSearchWithMap />
          <MeasureButtonWithMap />
          <LayerTreeWithMap
            layerGroup={layerGroup}
          />
        </Drawer>
      </MapContext.Provider>
    </div>
  );
}

export default App;
```
