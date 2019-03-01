# Higher-order components

A higher-order component (HOC) is a function that takes a component and returns a new component.

A HOC is an advanced technique in React for reusing component logic. HOCs are not part of the React API, per se. They are a pattern that emerges from React’s compositional nature.

To learn more about HOCs visit [https://reactjs.org/docs/higher-order-components.html](https://reactjs.org/docs/higher-order-components.html).

Commonly used HOC are [redux](https://redux.js.org/) or [react-i18next](https://react.i18next.com/), for example.

`react-geo` provides currently:
  * `mappify`
  * `isVisibleComponent`
  * `timeLayerAware`