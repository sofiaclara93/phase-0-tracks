zoo = {
   sub_sahara: {
    mammals: ["Elephant", "Lion", "Hyenna"],
    reptiles: ["Python", "Chameleon" ]
   },
   
   jungle: {
    mammals: ["Gorilla", "Leopard" ],
    reptiles: ["Poison Dart Frog", "Nile Crocodile" ]
   },
   
   aquatic: {
    mammals: ["Sea lion", "Walrus" ],
    fish: ["Piranha", "Clown fish"]
   }
}

puts zoo[:jungle][:mammals][1]

puts zoo[:sub_sahara]

puts zoo[:aquatic][:fish]

zoo[:aquatic][:mammals].push("Whale")

puts zoo[:aquatic][:mammals][2]