
# Development notes

`create-react-app` includes a [webpack](https://github.com/webpack/webpack) development server. This server allows you to 'hot deploy' your edited code. This means that your code changes will be immediatly visible in the browser.

* Edit app.js to modify the example… and let the magic happen!

[![](../screenshots/hallo_welt.png)](../screenshots/hallo_welt.png)


```javascript
import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Hallo Welt!</h1>
        </header>
        <p className="App-intro">
            Hallo Welt!
        </p>
      </div>
    );
  }
}

export default App;

```