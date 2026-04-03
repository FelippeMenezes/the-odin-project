let users = [
  {id: 'john', name: "John Smith", age: 20},
  {id: 'ann', name: "Ann Smith", age: 24},
  {id: 'pete', name: "Pete Peterson", age: 31},
];

// function groupById(usersArray) {
//   let object = {};

//   for (let i = 0; i < usersArray.length; i++) {
//     object[usersArray[i].id] = usersArray[i];
//   }
//   return object
// };

function groupById(usersArray) {
  return usersArray.reduce((object, user) => {
    object[user.id] = user;
    return object;
  }, {});
};

let usersById = groupById(users);

/*
// after the call we should have:

usersById = {
  john: {id: 'john', name: "John Smith", age: 20},
  ann: {id: 'ann', name: "Ann Smith", age: 24},
  pete: {id: 'pete', name: "Pete Peterson", age: 31},
}
*/
