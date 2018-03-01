```javascript
<LayerTree
  map={map}
/>
```

Verwendung einer [OpenLayers LayerGroup](https://openlayers.org/en/latest/examples/layer-group.html)
```javascript
const layerGroup = new OlLayerGroup({
  name: 'Layergroup',
  layers: [
    new OlLayerTile({
      name: 'Food insecurity layer',
      minResolution: 200,
      maxResolution: 2000,
      source: new OlSourceTileJson({
        url: 'https://api.tiles.mapbox.com/v3/mapbox.20110804-hoa-foodinsecurity-3month.json?secure',
        crossOrigin: 'anonymous'
      })
    }),
    new OlLayerTile({
      name: 'World borders layer',
      minResolution: 2000,
      maxResolution: 20000,
      source: new OlSourceTileJson({
        url: 'https://api.tiles.mapbox.com/v3/mapbox.world-borders-light.json?secure',
        crossOrigin: 'anonymous'
      })
    })
  ]
});

<LayerTree
  layerGroup={layerGroup}
  map={map}
/>
```

Weitere Beispiele [hier](https://terrestris.github.io/react-geo/examples/LayerTree/LayerTree.example.html)
