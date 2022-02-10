# Drawer

Drawers are a nice method to add features in a visual appealing way. In this case we make use of the [Drawer component](https://ant.design/components/drawer/) provided by antd. This can be opened and closed with the SimpleButton we created previously.

[![](../screenshots/drawer.png)](../screenshots/drawer.png)

**Task:** Add a drawer with the title `react-geo-application` to the right side of the app and let it open and close via a SimpleButton.

Your solution should look something like this:

```javascript
import React, { useState } from 'react';

import OlMap from 'ol/Map';
import OlView from 'ol/View';
import OlLayerTile from 'ol/layer/Tile';
import OlSourceOsm from 'ol/source/OSM';

import { Drawer } from 'antd';

import {
  SimpleButton,
  MapComponent
} from '@terrestris/react-geo';

import './App.css';
import 'ol/ol.css';
import 'antd/dist/antd.min.css';
import './react-geo.css';

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

function App() {
  const [visible, setVisible] = useState(false);

  const toggleDrawer = () => {
    setVisible(!visible);
  }

  return (
    <div className="App">
      <MapComponent
        map={map}
      />
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
      />
    </div>
  );
}

export default App;
```
