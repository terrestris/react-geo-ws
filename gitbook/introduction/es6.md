#ES6

<img src="../images/ES6.png" alt="" style="width: 150px;"/>

ES (ECMAScript) is a trademarked scripting-language specification created to standarize JavaScript.
AS the name suggests, ES6 (later renamed to ES2015) is the sixth edition and came with significant new syntax for writing complex applications,
including classes and modules. Some Browsers do not (or only partially) support ES6, but the ES6 code can be transpiled in
ES5, which enjoy a broader compability.

JavaScript frameworks and libraries to build modern web-applications are written in ES6.

## import
```javascript
import { CircleMenu } from 'react-geo';
```
### export
```javascript
const name = 'Peter';
export default name;
```

## variable declaration

- ES5: `var`
- ES6: `var`, `let` and `const`:
  * Scope dependent

### Function definition

```javascript
// ES5
var myFunc = fucntion (myArg) {
  if (!myArg) {
    myArg = 'Peter'
  };
  return myArg + ' is the best arg!';
}
// ES6
const myFunc = (myArg = 'Peter') => {
  return myArg + ' is the best arg!';
} // myFunc() ----> 'Peter is the best arg!'
// ES6 shortened
const myFunc = myArg => myArg + ' is the best arg!';
```

### Template string
```javascript
// ES5
var a = 1909;
console.log('Year: ' + a)
// ES6
console.log(`Year ${a}`)
```

### Destructuring 

*Example 1*: Object destructuring 

```javascript
// ES5
var obj = {
  name: 'Peter',
  age: 55
}
var age = obj.age;

// ES6
const obj = {
  name: 'Peter',
  age: 55
}
const {
  age
} = obj;
```

*Example 2*:

```javascript
// ES5
var user = {name: 'peter', age: 12};
user = Object.assign(user, {email: 'peter@love.de'});
// ES6
let user = {name: 'peter', age: 12};
user = {...user, email: 'peter@love.de'};
```