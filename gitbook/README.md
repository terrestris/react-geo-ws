React Geo ist eine tolle Bibliothek für Karten mit react und ol und antd

![](images/react-geo-logo.svg)

# react-geo - mapping mit React

Herzlich Willkommen beim Workshop **react-geo - mapping mit React** auf der FOSSGIS 2018 in Bonn.

Dieser Workshop wurde für die Verwendung auf der [OSGeo-Live {{ book.osGeoLiveVersion }} DVD](https://live.osgeo.org) entwickelt und soll eine elementare Einführung in react, npm und ES6 geben und einige nützliche Komponenten am Beispiel demonstrieren.

> **info**
>
> Der Workshop kann [hier als PDF-Version]({{ book.workshopPdfUrl }}) heruntergeladen werden.

Der Workshop ist aus einer Reihe von Modulen zusammengestellt. In jedem Modul werden Sie eine Reihe von Aufgaben lösen, um ein bestimmtes Ziel zu erreichen. Jedes Modul baut Ihre Wissensbasis iterativ, modular und nukular, übnertstzbar auf.

# Autoren

{% for author in book.authors %}
  - {{ author.name }} ([{{ author.mail }}](mailto:{{ author.mail }}))
{% endfor %}

###### (Die Autoren sind alphabetisch nach ihrem Nachnamen sortiert.)

Die folgenden Module werden in diesem Workshop behandelt:

# [Einführung](./README.md)
#### [React](introduction/react.md)
#### [ES6](introduction/es6.md)
#### [npm](introduction/npm.md)

# [Erste Schritte](first-steps/index.md)
#### [OSGeo-live](first-steps/osgeo-live.md)
#### [create-react-app](first-steps/create-react-app.md)
#### [webpack](first-steps/webpack-hotreload.md)
#### [Basispakete](first-steps/basispakete.md)
#### [Erste Komponente](first-steps/erste-komponente.md)

# [Kartenapplikation mit react-geo Komponenten](map-integration/index.md)
#### [MapComponent](map-integration/map-component.md)
#### [Titlebar](map-integration/titlebar.md)
#### [NominatimSearch](map-integration/nominatim-search.md)
#### [MeasureButton](map-integration/measure-button.md)
#### [LayerTree](map-integration/layer-tree.md)

# [Higher order components / Provider](higher-order-components/general.md)
#### [MapProvider / `mappify`](higher-order-components/mappify.md)
#### [VisibleComponent / `isVisibleComponent`](higher-order-components/visible-component.md)
