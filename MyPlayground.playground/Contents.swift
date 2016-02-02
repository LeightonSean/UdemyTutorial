//: Playground - noun: a place where people can play

import UIKit

// Arrays
/*
var arr = [12, -19, 69]
arr.removeAtIndex(1)
arr.append(arr[0] * arr[1]);
*/


// Dictionaries
/*
var dictionary = ["computer": "science", "gett":"turnt"]

print(dictionary["computer"]!);


print(dictionary.count);

dictionary["pen"] = "cil";

dictionary.removeValueForKey("computer");

print(dictionary);



var menu = ["pizza":11, "pie":12, "crust":13]

var total = menu["pizza"]! + menu["pie"]! + menu["crust"]!;
print("hmm \(total)");
*/


// If Statements
/*
var pass = "24198";
var userName = "sean";
var passTrue = false;
var userTrue = false;
if(pass == "24198"){
    passTrue = true;
}

if(userName == "sean"){
    userTrue = true;
}

if(passTrue && userTrue){
    print("Hacked");
}else{
    if(!passTrue){ print("Incorrect password");}
    if(!userTrue){ print("Incorrect user Name");}
}
*/
// For Loops
/*
for(var i = 2; i <= 20; i += 2){
    print(i);
}


var arr = [8,9,10,11];
for x in arr{
    print(x);
}

for(index,value) in arr.enumerate(){
    arr[index] = value + 2;
    
}
print(arr);

var arr2 = [1.0,2.0,3.0,4.0];
//var arr2:[Double] = [1,2,3,4];
for(index,value) in arr2.enumerate(){
    arr2[index] = value / 2.0;
}
print(arr2);
*/

// While Loops
/*
var i = 1;
while (i <= 10 ){
    print(i*5);
    i++;
}

var arr = [12,233,41,5,6];
var x = 1;
while(x <= arr.count){
    arr [x] = arr[x] - 1;
    x++;
}
print(arr);
*/




// Check Is Prime

var num = Int(arc4random_uniform(100));
var isPrime = true;
if(num != 2 && num != 1){
    for (var i = 2; i < num; i++){
        if(num % i == 0){
            isPrime = false;
        }
    }
}
else if(num == 1){
    isPrime = false;
}
print(isPrime)




