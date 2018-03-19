# LayerTree

* Tree component displaying the map layers in a hierarchical way

Autoconfigured with the topmost layer group ([OpenLayers LayerGroup](https://openlayers.org/en/latest/examples/layer-group.html)) of passed map:

```javascript
<LayerTree
  map={map}
/>
```

The layer group ([OpenLayers LayerGroup](https://openlayers.org/en/latest/examples/layer-group.html)) can be passed as a prop as well:

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

[Further examples ](https://terrestris.github.io/react-geo/examples/LayerTree/LayerTree.example.html)
