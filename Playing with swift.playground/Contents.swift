import UIKit

// Types
var monsterHealth  = 19

print(monsterHealth)

let myName : String = "Cristian"
let myAge : Int = 26
let myDetails = myName + " \(myAge)"

let boolean: Bool = true
let float : Float = 1.4
let double : Double = 3.141592


// Functions

func getMilk(howManyMilkCartons: Int, howMuchMoneyRobotWasGiven : Int) -> Int{
    print("Go to the shops")
    print("Buy \(howManyMilkCartons) cartons of milk")
    let priceToPay = howManyMilkCartons * 2
    print("pay \(priceToPay) CHF")
    print("come home")
    let change = howMuchMoneyRobotWasGiven - priceToPay
    return change
}

var amountOfChange = getMilk(howManyMilkCartons: 10, howMuchMoneyRobotWasGiven: 22)

print("Hello master, here's your \(amountOfChange) CHF")


// Conditional Statements

func loveCalculator(yorName: String, theirName: String) -> String{
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80{
        return "Love Score: \(loveScore). You love each other like Kanye loves Kayne"
    }
    else if(loveScore > 40 && loveScore <= 80){
        return "Love Score: \(loveScore). You go together like coke and mentos"
    }
    else{
        return "Love Score: \(loveScore). No love possible, you'll be forever alone!"
    }
}

print(loveCalculator(yorName: "Cristian", theirName: "Myriam"))


func computeBMI(mass: Double, height: Double) -> String{
    let BMI = mass / pow(height, 2)
    let shortenedBMI = String(format: "%.2f", BMI)
    var interPretation = ("Your BMI is \(shortenedBMI) and ")
    if(BMI > 25){
        interPretation += "Status: Overweight"
    }
    else if(BMI >= 18.5 && BMI <= 25){
        interPretation += "Status: Normal Weight"
    }else{
        interPretation += "Status: Underweight"
    }
    return interPretation
}

print(computeBMI(mass: 62, height: 1.8))


// Loops

let numbers = [1, 5, 3, 6, 2, 7, 23, 34]

var sum = 0
for number in numbers{
    sum += number
}
print(sum)

// Note: "..." [1, 10] ..< [1, 9]
for number in 1..<10{
    print(number)
}
