// paired w/ tiffchiu

var horse_colors = ["purple", "blue", "green", "pink"];
var horse_names = ["Ed", "Tom", "Jill", "Amy"];

horse_colors.push("yellow");
horse_names.push("Ronald");

console.log(horse_colors);
console.log(horse_names);

var assigned_colors = {};

for (var i = 0; i < horse_names.length; i++) {
 assigned_colors[horse_names[i]] = horse_colors[i];
}

console.log(assigned_colors)

/////////////////////////////////////////////////////////

function Car(model, make, year, is_fast) {
  this.model = model;
  this.make = make;
  this.year = year;
  this.is_fast = is_fast;

  this.start = function() { console.log("Vroom vroom"); };

  console.log("Car initialization complete")
}

console.log("Let's build a car!");
var car1 = new Car("Mustang", "Ford", 2009, true);
console.log(car1);
car1.start();

var car2 = new Car("Jetta", "Volkswagen", 2010, true);
console.log(car2);
car2.start();

var car3 = new Car("500", "Fiat", 2000, false);
console.log(car3);