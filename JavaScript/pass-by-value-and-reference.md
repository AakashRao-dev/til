# Pass-by-value vs. Pass-by-reference

- In other languages like C++ we have true pass-by-reference which means passing the actual reference itself.
- This means function can both modify the object's contents and change what the reference points to.

- But in JavaScript we are passing a copy of the reference to the object.
- The function can only modify the object's contents but cannot change what the original reference points to.

---

## Passing a Reference (What JS does)

When we pass an object to a function in JavaScript, the reference to that object is passed by value.

This means:

- The reference (pointer to the object in memory) itself is a value.
- The function receives a copy of this reference. Changes made to the object's properties within the function affect the original object since both the function parameter and the original variable point to the same object in memory.
- However, reassigning the reference inside the function does not affect the original reference outside.

```js
function modifyObject(obj) {
  obj.name = "Changed";
  obj = { newKey: "newValue" };
}

let myObject = { name: "Original" };
modifyObject(myObject);

console.log(myObject); // { name: "Changed" } - only the property was modified
```

## Pass by Reference

In true "pass by reference" (not supported in JavaScript), the reference itself is passed, not a copy.

This means:

- Any reassignment of the parameter within the function directly changes the original variable outside the function.
- This is different from passing a reference to an object in JavaScript.

```js
// Hypothetical Language Example
function modifyReference(obj) {
  obj = { newKey: "newValue" }; // Reassignment directly affects the original variable
}

let myObject = { name: "Original" };
modifyReference(myObject);

console.log(myObject); // { newKey: "newValue" } - The original variable is entirely replaced
```
