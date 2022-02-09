# useMap Hook

The `useMap` hook relies on the [React Context API](https://reactjs.org/docs/context.html) which allows us to pass data through the component tree without having to pass props down manually at every level.

## MapContext

The `MapContext` supplies the passed map to the React context (see also [here](https://reactjs.org/docs/context.html)) for the child elements.

## useMap

The `useMap` hook grabs a map object from the context and makes it available in the given component. See the [docs](https://terrestris.github.io/react-geo/docs/latest/#/Components/Hooks/UseMap) for a working example.

**Task:** Update your app by mappifying your components.

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
import 'antd/dist/antd.min.css';
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
      iconName="pen"
      pressedIconName="pen"
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
