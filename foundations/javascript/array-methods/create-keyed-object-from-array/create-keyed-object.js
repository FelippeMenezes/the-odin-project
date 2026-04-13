let users = [
  {id: 'john', name: "John Smith", age: 20},
  {id: 'ann', name: "Ann Smith", age: 24},
  {id: 'pete', name: "Pete Peterson", age: 31},
];

// function groupById(array) {
//   let object = {};
//   for (let i = 0; i < array.length; i++) {
//     object[array[i].id] = array[i];
//   }
//   return object;
// }

function groupById(array) {
  return array.reduce((object, user) => {
    object[user.id] = user;
    return object;
  }, {});
};

let usersById = groupById(users);
console.log(usersById);

/*
// after the call we should have:

usersById = {
  john: {id: 'john', name: "John Smith", age: 20},
  ann: {id: 'ann', name: "Ann Smith", age: 24},
  pete: {id: 'pete', name: "Pete Peterson", age: 31},
}
*/
