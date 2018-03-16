# Include a react-geo compoment

Now that we have `react-geo` installed, we can use it's components in the
*{{ book.reactAppName }}* application. For demonstration purposes we'll now
add a [simple button]((https://terrestris.github.io/react-geo/examples/Button/SimpleButton/SimpleButton.example.html))
to the main frame of the application.

Please open a text editor (if not already done) and open the file `App.js` from
the `src` directory of your *{{ book.reactAppName }}* application. Now import the
binding of the `SimpleButton` class with the following statement:

```
import {
  SimpleButton
} from '@terrestris/react-geo';
```

In addition to the source of the classes we have to import the styles of `react-geo`
and `antd`:

```
import 'antd/dist/antd.css';
import './react-geo.css';
```

Now make use of the imported class by integrating it to the `App-intro` paragraph
inside the `App` div:

```
<SimpleButton>
  Hello world!
</SimpleButton>
```

Save the file, visit the application in your browser (if you haven't closed it,
you should see the changes directly, otherwise reopen [http://localhost:3000](http://localhost:3000))
and you should see a blue button labelled with the text *Hello world*.

[![](../screenshots/hallo_welt_button.png)](../screenshots/hallo_welt_button.png)

Congratulations! You just created a complete React application including your first
`react-geo` component with a few commands! We will now enhance the button to alert
once it has been clicked by implementing a `onClick` callback function:

```
<SimpleButton
  onClick={() => {alert('Hello World!');}}
>
```

Save the changes and test the results by clicking on the button. You should now
see a simple alert message with a *Hello World!* message.

You final solution should look like the following snippet:

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
          <h1 className="App-title">Hello World!</h1>
        </header>
        <p className="App-intro">
            <SimpleButton
              onClick={() => {alert('Hello World!');}}
            >
              Hello World!
            </SimpleButton>
        </p>
      </div>
    );
  }
}
```