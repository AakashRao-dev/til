# Skipping an Argument with undefined

This works well with setting default parameters to functions. For instance here's an example:

```js
const bookings = [];

const createBooking = function (
  flightNum,
  numPassengers = 1,
  price = 199 * numPassengers,
) {
  const booking = {
    flightNum,
    numPassengers,
    price,
  };

  console.log(booking);
  bookings.push(booking);
};

createBooking("LH123"); // {flightNum: 'LH123', numPassengers: 1, price: 199}
createBooking("LH123", undefined, 5); // {flightNum: 'LH123', numPassengers: 1, price: 5}
```
