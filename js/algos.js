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

var words = ["long phrase","longest phrase","longer phrase"]

console.log(longest_word(words));

var names = ["Ed", "Sofia", "Daniel", "Tom", "Matthew", "Rich"]
console.log(longest_word(names));
