# Special Things about Functions in JavaScript

## Key things to remember

- JavaScript treats functions as first-class-citizens (value), which helps it with having Higher Order Functions.
- Functions are **values**, but they are also **special objects**
- Like all objects, functions are passed by reference, meaning the callee can invoke or modify the function
- Function declarations automatically **create a variable with the same name** as the function. This is a key behavior of JavaScript.

```js
function greet(name) {
  console.log("Hello, " + name);
}

console.log(greet.name); // "greet" (name of the function)
console.log(greet.length); // 1 (number of parameters)
```

```js
function sayHello() {
  console.log("Hello, original function!");
}

function modifyFunction(fn) {
  fn.newBehavior = function () {
    console.log("Hello, modified behavior!");
  };
  return fn.newBehavior;
}

// Modifying the function indirectly
sayHello = modifyFunction(sayHello);

sayHello(); // Output: Hello, modified behavior!
```
