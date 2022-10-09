import UIKit
/*
//lesson 1
var greeting = "Hello, playground"
print(greeting)

greeting = "hello"
print(greeting)

//other way of declaring variables
var str: String = "swift"
print(str)

//int as a string
str = "29"
print(str)
str =  String(29)
print(str)


//assignment op
var a = 1
var b = 1
a = 2
//a = b
print(a + b)
print(a - b)
print(a * b)
print(a / b)

//datatypes
var c:Float = 2.3
var d:Double = 13.9
var e:Bool = true

print(Int(c))
print(Int(d))
print(round(d))
print(type(of: e))

*/




/*
//lesson 2
let a = 10;
let b = 5


//if else statement
if a < 4 {
    print("only if a is less 4")
} else {
    print("a is greater than 4")
}



//else if
if (a < 5) {
    print("only if a is less 5")
}
else if !(a == 10 && b > 2){
    print("a is equal to 10 & b greater than 2")
}
else {
    print("doesn't match")
}
 
 */





/*
//lesson 3
//switch statement
var someCharacter:Character = "d"

switch someCharacter {
case "a":
    print("is an A")

//multiple cases can be written
case "b", "c", "d":
    print("is a B or C or D")

default:
    print("some fallback")
}


//loops
//for in loop
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)")
}

for index in 1...5 {
    print(index)
}

// _ to print as many times mentioned
for _ in 1...5 {
    print("hello")
}


var sum = 0
for index in 1...5 {
    sum += index
}
print(sum)

 
let numbers = [11, 45, 90]
var sumOfNum = 0
for num in numbers {
    sumOfNum += num
}
print(sumOfNum)
 
 
 
 //while loop
 var counter = 5
 while counter > 0 {
     print("hello")
     counter -= 1
 }


 repeat {
     print("hello")
 } while counter > 0
 
 */




/*
//lesson 4
//function
func addTwoNumbers() {
    let a = 1;
    let b = 2;
    let c = a + b;
    
    print(c)
}
addTwoNumbers()


func subtractTwoNumbers() {
    let a = 8
    let d = 1
    let e = a - d
    
    print(e)
}

subtractTwoNumbers()


//function return
func addTwoNumbers1() -> Int {
    let a = 3
    let b = 7
    let c = a + b
    
    return c
}
//fun can be stored in variable
let value = addTwoNumbers1()
print(value)



// function with parameter and its type should be mentioned
func addNumber(arg para:Int) -> Int {
    let a = para
    let b = 7
    let c = a + b
    
    return c
}

let val = addNumber(arg: 6)
print(val)


//diffrent ways of labelling args and params in function

//with args label
func addThreeNum(arg para1:Int, arg para2:Int, arg para3:Int) -> Int {
    return para1 + para2 + para3;
}
let sum = addThreeNum(arg: 4, arg: 7, arg: 11)
print(sum)


//without args label
func add2Num(para1:Int, para2:Int) -> Int {
    return para1 + para2
}
let sum1 = add2Num(para1: 7, para2: 8)
print(sum1)


//another way
func add3Num(using num1:Int, num2:Int, num3:Int) -> Int {
    return num1 + num2 + num3
}
let sum2 = add3Num(using: 4, num2: 7, num3: 5)
print(sum)

func add4Num(_ num1:Int, _ num2:Int, _ num3:Int, _ num4:Int) -> Int{
    return num1 + num2 + num3 + num4
}

let sum3 = add4Num(2, 6, 9, 3)
print(sum3)

 
 

//sample with args label
func greet(person:String) -> String {
    let meeting = "hello, " + person + "!"
    return meeting
}
//print(greet(person: "siddiq"))

func greetAgain(person:String) -> String {
    return "Hello Again, " + person + "!"
}
print(greetAgain(person: "siddiq"))



func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}


//based on parameter func is getting triggered
print(greet(person: "Sidd", alreadyGreeted: true))
print(greet(person: "Anik"))
print(greet(person: "Mun", alreadyGreeted: false))



func greet(_ person:String) -> String {
    let meeting = "hello, " + person + "!"
    return meeting
}
//print(greet("siddiq"))

func greetAgain(_ person:String) -> String {
    return "Hello Again, " + person + "!"
}
print(greetAgain("siddiq"))

func greet(_ person: String,_ alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person)
    } else {
        return greet(person)
    }
}

print(greet("Sidd",true))
print(greet("Anik"))
print(greet("Mun",false))
 
 
 
func printAndCountString(_ string: String) -> Int{
    print(string)
    return string.count
}
print(printAndCountString("swift language"))
 
 
 

 

 func minMax(array: [Int]) -> (min: Int, max: Int) {
     var currentMin = array[0]
     var currentMax = array[0]
     
     for value in array[1..<array.count] {
         if value < currentMin {
             currentMin = value
         } else if value > currentMax {
             currentMax = value
         }
     }
     return (currentMin, currentMax)
 }
  
  
 //print(minMax(array: [8, -6, 2, 109, 3, 71]))
 let bounds = minMax(array: [78, -4, 8, 34, 98, 87, 6])
 print("min is \(bounds.min) and max is \(bounds.max)")
 
 
 
 
//func with multiple return values
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
 
 
//print(minMax(array: [8, -6, 2, 109, 3, 71]))
if let bounds = minMax(array: [78, -4, 8, 34, 98, 87, 6]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}
func printName(for name:String) -> String {
    return "Hello " + name + "!"
}
print(printName(for: "Siddiq"))
 
 
*/




/*
//lesson 5
//classes
class BlogPost {
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0
    
    func addComments() {
        numberOfComments += 1
    }
}

let myPost = BlogPost()
myPost.title = "Hello Playground"
myPost.author = "Sidd"
myPost.body = "Hello"
myPost.addComments()
print(myPost.author)
print(myPost.numberOfComments)
//print("title \(myPost.title)")


let mySecondPost = BlogPost()
mySecondPost.title = "Goodbye Playground"
mySecondPost.author = "Barbhuiya"
mySecondPost.body = "Hello"
print(mySecondPost.author)
print(mySecondPost.numberOfComments) // 0 bcz we haven't addes                                          addComments in mySecondPost



//Inheritance
class Car {
    var topSpeed = 200
    
    func drive() {
        print("Driving at \(topSpeed)")
    }
}
let myRide = Car()
myRide.topSpeed
myRide.drive()


class FutureCar : Car{
    override func drive() {
        super.drive() //to call methods directly from parents
        print("and rocket boosting at 50")
    }
    
    func fly() {
        print("Flying")
    }
}
let myNewRide = FutureCar()
myNewRide.drive()
myNewRide.fly()
print("future car's top speed is \(myNewRide.topSpeed)")



//Initilizer
class Person {
    var name = ""
    var age = 0
    
    init() {
        
    }

    init(_ name:String, _ age:Int) {
        
        //name = name
        self.name = name
        self.age = age
        //age = age
    }
}

var a = Person("Sidd", 24)
print(a.name)
print(a.age)

var b = Person()
print(b.name)
print(b.age)

var c = Person("Barbhuiya", 20)
print(c.name)
print(c.age)


//Parameterized Initializer

// declare a class
class Wall {
  var length: Double
  var height: Double
//var height = 0.1  //0.1 since its double
//var length = 0.1 //0.1 since its double

  // parameterized initializer to initialize properties
  init(length: Double, height: Double) {
    self.length = length
    self.height = height
  }

  func calculateArea() -> Double {
    return length * height
  }
}

// create object and initialize data members
var wall1 = Wall(length: 10.5, height: 8.6)
var wall2 = Wall(length: 8.5, height: 6.3)

print("Area of Wall 1: ", wall1.calculateArea())
print("Area of Wall 2: ", wall2.calculateArea())




class Perimeter {
    var length:Int
    var breadth:Int
    
    init(length:Int, breadth:Int) {
        self.length = length
        self.breadth = breadth
    }
    
    func calcPerimenter() -> Int{
        let peri = length * breadth
        return 2 * peri
    }
    
}

var rectangle = Perimeter(length: 20, breadth: 10)
var squrare = Perimeter(length: 20, breadth: 20)

print("perimeter of rect: ", rectangle.calcPerimenter())
print("primeter of square: ", squrare.calcPerimenter())




//Convenience Initializers are useful when it comes to assigning default values to stored properties.

class University {
    var name:String
    var rank:String
    
    init(name:String, rank:String){
        self.name = name
        self.rank = rank
    }
    
    convenience init() {
   //   self.init()
        self.init(name: "SiddiqBarbhuiya",rank: "1st")
    }
}

//customized value
let university2 = University(name: "Anik", rank: "2nd")
jjjprint(university2.name, university2.rank)

//default Value
let university1 = University()
print(university1.name, university1.rank)


*/


/*

//lesson 6
//Optionals
//Optional chaining or binding is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil.
class Person {
   var name = ""
}

class BlogPost {
    var title:String?
//    var body = "hey "
    var body:String?
    var author:Person?
    var numberOfComments = 0
}

let post = BlogPost()
//print(post.body + "hello!")

post.title = "hi "
if let actualTitle = post.title {
    print(actualTitle + "alisha")
}

post.body = "hey "
if let actualBody = post.body {
    print(actualBody + "anik!!")
}


//with ! we can force check the value
print(post.title! + "alisha")


//optional with if statement
if post.title != nil {
    print(post.title! + "alisha")
}

if post.title == nil {
    print("nothing ")
}
 */



/*
//lesson 7
//properties

//you can call properties of class inside the methods lying in classes
//you cannot call variables or values declaired inside a methods of class on another methods lying in the same class

class Person {
   var name = ""
}

class BlogPost {
    
    //computed proprty
    var fullTitle:String {
        if title != nil && author != nil {
            return title! + " by " + author!.name
        } else if title != nil {
            return title!
        } else {
            return "No Title"
        }
    }
    
    
    var title:String?
    var body = "hey "
    var author:Person?
    var numberOfComments = 0
}

let author = Person()
author.name = "Sidd "

let myPost = BlogPost()
myPost.author = author
myPost.title = "Learning Swift as a Beginner"
print(myPost.fullTitle)
*/




/*
//lesson 8
//Arrays
var a = "dog"
var b = "bird"
var c = "cat"


//way to declaire array
var d = ["dog", "cat", "bird"]

//empty array
var e = [String]()


//add "my" before each items
for counter in 0...2 {
    print("my " + d[counter])
}



//to execute via func
func printMy(array: [String]) {
    for item in d {
        print("my " + item)
    }
}
printMy(array: d)



//to add item on d
d += ["mouse", "owl"]
//or
d.append("sparrow")

//to remove items from d
d.remove(at: 0)
//removes all
//d.removeAll()

//to change items at particular index
d[0] = "turtle"

*/



//Dictionaries
//similar to hashmap of java
//var carDb = Dictionary<String, String> ()
var carDb2 = [String:String]()

//adding key value pairs
carDb2["JSD 234"] = "Blue Ferrari"
carDb2["SID 482"] = "Green Lamborgini"

//to access value with key
print(carDb2["JSD 234"]!)

//to update a value
carDb2["JSD 234"] = "Red Ferrari"

//remove a key value pair
carDb2["JSD 234"] = nil


//iterate over it
for(license, car) in carDb2 {
//    print(car)
print("\(car) has a license: \(license)")
}


class Enemy {
    var health : Int
    var attackStrength : Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func move() {
        print("walk forward")
    }
    
    func attack() {
        print("land a hit, does, \(attackStrength) damage")
    }
    
    func takeDamage(amount: Int) {
        health = health - amount
    }
}

//let skeleton = Enemy()
//print(skeleton.health)


//inheritance
class Dragon: Enemy {
    var wingSpan = 5
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    //override: bcs  superclass has also a move method
    override func move() {
        print("Fly forward")
    }
    
    override func attack() {
        //calling the attack method from superclass
        super.attack()
        print("I split fire")
    }

}

//let dragon = Dragon()s
//dragon.move()
//print(dragon.wingSpan)
//dragon.talk(speech: "I am dangerous")
//dragon.attack()

let skeleton1 = Enemy(health: 100, attackStrength: 10)


//classes take the references
skeleton1.takeDamage(amount: 10)
let skeleton2 = skeleton1
print(skeleton2.health)


//optional
/*
//1.force unwrapping
optional!

//2. check for nil value
if optional != nil {
    optional!
}

//3.Optional binding
if let safeOptional = optional  {
    safeOptional
}

//4.Nil Coalescing Operator
optional ?? defautlValue

//5.Optional Chaing
optional?.proprty
optional?.methdd()
}
*/



//Closure

func calculator(no1: Int, no2: Int, operation: (Int, Int) -> Int)-> Int {
    return operation(no1, no2)
}

func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}


/*
func multiply(n1: Int, n2: Int) -> Int {
    return n1 * n2
}
 
calculator(no1: 2, no2: 3, operation: multiply)

 */


//small it even further


/*
//small format of closure
{ (n1: Int, n2: Int) -> Int in
    return n1 * n2
}
 
 
calculator(no1: 2, no2: 3, operation: { (n1: Int, n2: Int) -> Int in
     return n1 * n2
})

 
//let result = calculator(no1: 2, no2: 3, operation: {(n1, n2) in n1 * n2})

*/

//trailing func $0-> first param & $1-> second param of oprator
let result = calculator(no1: 2, no2: 3) {$0 * $1}
print(result)


//another example
let array = [3, 5, 6, 8, 1]

/*
func addOne(n1: Int) -> Int {
    return n1 + 1
}
array.map(addOne)
 
 
 array.map({(n1: Int) -> Int in
     return n1 + 1
 })
 */

let arrayElem = array.map{$0 + 1}
print(arrayElem)

//conver array elem into string
let arrayIntoString = array.map{"\($0)"}
print(arrayIntoString)


//Constacts
//** static keyword is used to define a property associted directly with the class name

struct MyStructure {
    let intanceProperty = "ABC"
    static let typeProperty = "123"
}

//to access intanceProperty
let myStructure = MyStructure()
print(myStructure.intanceProperty)

//to access typeProperty
print(MyStructure.typeProperty)
