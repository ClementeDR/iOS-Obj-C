//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var number = 1 + 1 + 1;
print("Prova \(number) \(str)")

let label = "label 10";
let larghezza = 90
let margine = 10
let padding = 20.0
let larghezzaLabel = label + String(larghezza)

let altraLab = "La label è \(2 * larghezza + 2 * margine)"


var myArray = [String]()

myArray.append("prova");
myArray.append("prova2");

myArray.append("prova3");

myArray.append("prova4");
myArray.description

for i in 0...myArray.count - 1{
    print(myArray[i])
}

var yA = [String]()

var myDictionary = [String: Int]()
myDictionary = [:]

myDictionary["ciao"] = 10
myDictionary["pop"] = 10
myDictionary.description

var z = myArray[1]



var test = [Int](repeating: 1, count: 100)
var t = test.reduce(0) { (x:Int, y:Int) -> Int in
    return x+y
}


test = test.map({
    (value: Int) -> Int in
    return 34
});

var ff = test.reduce(0) { (x:Int, y:Int) -> Int in
    x+y
}

test.forEach { (elem: Int) in
    print(elem)
}

let name:String? = nil
let sur:String = "poppo"
let info = "Hi \(name ?? sur)"

var 🙆 = 10;
var 👱🏿 = 23
var 👶🏿 = 👱🏿 + 🙆;
func calcola(punteggi:[Int]) -> (min:Int, max:Int, sum:Int){
    return (punteggi.min() ?? 0, punteggi.max() ?? 0, punteggi.reduce(0, { (acc:Int, x:Int) -> Int in
        acc + x
    }))
}


var max = 0, min = 0, sum = 0;
(max, min, sum) = calcola(punteggi: [2, 54,5475,463,643]);
print(calcola(punteggi: [2, 54,5475,463,643]))


func summ(numbers: Int...) -> Int {
    var sum = 0
    for num in numbers{
        sum += num;
    }
    return sum;
}


func makeInc() -> ((Int) -> Int){
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    
    return addOne
}


func makeInc2() -> (([Int]) -> Int){
    func addOne(number: [Int]) -> Int{
        return 1 + number.first!
    }
    
    return addOne
}

var incrementer = makeInc();
incrementer(10)

var incre2 = makeInc2()
incre2([10, 23, 3543]);


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    
    for item in list{
        if condition(item) {
            return true
        }
    }
    return false;
}




func cond(number:Int) -> Bool{
    return (number % 2) == 0
}


var testM = hasAnyMatches(list: [2,100, 235], condition: cond)


