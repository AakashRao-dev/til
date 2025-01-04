# Relationship between function as First-Class Citizen & Passing by Reference


## Key things to remember

- Functions are **values**, but they are also **special objects** 
- Like all objects, functions are passed by reference, meaning the callee can invoke or modify the function
- This duality (being values and objects) is why functions are so versatile in JavaScript

```js 
function greet(name) {
  console.log("Hello, " + name);
}

console.log(greet.name);   // "greet" (name of the function)
console.log(greet.length); // 1 (number of parameters)
```
