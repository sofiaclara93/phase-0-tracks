// take in string parameter into function
// create an empty word to push letters into 
// set a counter to the length of the word 
// set a while condition 
// print each letter index by subtracting 1
// add each letter to the empty string 

function reverse(str) {
  var empty_str = '';
  for (var i = str.length - 1; i >= 0; i--)
    empty_str += str[i];
  return empty_str;
}

console.log(reverse("hello"));

if (1 == 1) {
  console.log(reverse("hello"));
}

else {
  console.log("Error");
}