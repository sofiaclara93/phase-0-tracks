// run through each item of the array
// compare the first item and second item for length
// take the item with the largest length and push it into the first element of an empty array
// once all the items are run through the new array should have the longest item
// print the first index of the new array

function longest_word (array) {
  holder_array = []
  for (var i = 0; i < array.length; i++) {
    for (var j = 1; j < array.length - 1; j++) {
    if (array[i].length > array[j].length) {
      holder_array[0] = (array[i]);
    }
    else {
      holder_array[0] = (array[j]);
    }
  }
}
return holder_array[0]
}





// create a function taking two objects in
// assign name to key-value pair in each object
// compare the pairs to each other
// return true or false 
function matching(object_1, object_2) {
  for (var property in object_1){
  for (var key in object_2){
    if (property + object_1[property] == key + object_2[key])
    var matches = true;
    }
   }
    if (matches == true){
    return true;
    }
    else {
    return false;
  }
 }


// TEST CODE 

// var words = ["long phrase","longest phrase","longer phrase"];
// console.log(longest_word(words));
// var names = ["Ed", "Sofia", "Daniel", "Tom", "Matthew", "Rich"];
// console.log(longest_word(names));


var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};
var person3 = {name: "Ed", age: 23};
console.log(matching(person1, person2));
console.log(matching(person2, person3));