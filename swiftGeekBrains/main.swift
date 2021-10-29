//
//  main.swift
//  EverOrOdd
//
//  Created by Юрий Минаев on 22.10.2021.
//

import Foundation

func everOrOdd (_ numberOne: Int) -> Bool {
    return numberOne % 2 == 0 ? true : false
}

var numberOne = 10

if everOrOdd(numberOne) {
    print ("Число четное")
} else {
    print ("Число нечетное")
}

func dividedWithoutRemainder (_ numberOne: Int) -> Bool {
    return numberOne % 3 == 0 ? true : false
}

if dividedWithoutRemainder(numberOne) {
    print ("3 делится без остатка")
} else {
    print ("3 не делится без остатка")
}


var numberMas:[Int] = []

for index in 1...100 {
    numberMas.append(index)
}

print ("Массив из 100 чисел\(numberMas)")


let filterNumberMas = numberMas.filter({!everOrOdd($0) && !dividedWithoutRemainder($0)})
print ("Массив с четными числами и теми, которые не делятся на 3 \(filterNumberMas)")

let quantityNumberFibonacci = 10

func fibonacci(quantityNumberFibonacci: Int) -> [Int] {

    assert(quantityNumberFibonacci > 1)

    var array = [0, 1]

    while array.count < quantityNumberFibonacci {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}

print ("Первые \(quantityNumberFibonacci) чисел Фибоначчи \(fibonacci(quantityNumberFibonacci:quantityNumberFibonacci))")
