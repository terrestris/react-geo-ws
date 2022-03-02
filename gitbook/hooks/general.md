# React hooks

React [Hooks](https://reactjs.org/docs/hooks-intro.html) were introduced in React 16.8 and allow us to handle state management and side-effects in function components. React Hooks enable us to write React applications with only function components. Thus, there is no need to use class components anymore.

Besides the integrated hooks you've already dealed with (e.g. `useState`), it's possible building your own Hooks to extract component logic into reusable functions. react-geo comes with a simple `useMap` hook to get the current OpenLayers map instance into your component.