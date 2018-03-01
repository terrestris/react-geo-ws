# Erste Komponente

### SimpleButton

Ein einfacher Button. [Beispiele](https://terrestris.github.io/react-geo/examples/Button/SimpleButton/SimpleButton.example.html)


```
<SimpleButton onClick={() => {alert('huhu');}}/>
```

Zur Verwendung des `SimpleButton` muss die entsprechende Klasse importiert werden.

> **Hinweis**
>
> Um die Komponenten korrekt darzustellen müssen die stylesheets von Ant Design und react-geo importiert werden.
>
> Hinweis auf import syntax (css, svg, …).


[![](../screenshots/hallo_welt_button.png)](../screenshots/hallo_welt_button.png)


```javascript
import React, { Component } from 'react';
import logo from './logo.svg';

import './App.css';
import 'antd/dist/antd.css';
import './react-geo.css';

import {
  SimpleButton
} from '@terrestris/react-geo';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Hallo Welt!</h1>
        </header>
        <p className="App-intro">
            <SimpleButton
              onClick={() => {alert('huhu');}}
            >
              Hallo Welt!
            </SimpleButton>
        </p>
      </div>
    );
  }
}
```
