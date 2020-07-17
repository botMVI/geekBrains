//
//  main.swift
//  hw1
//
//  Created by Michael Iliouchkin on 17.07.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import Foundation


//3x^2-14x-5=0

var a : Double = 3
var b : Double = -14
var c : Double = -5


var d = pow(b, 2) - 4 * ( a * c )

var x1 = ( -b + sqrt(d)) / (2 * a)
var x2 = ( -b - sqrt(d)) / ( 2 * a)

print(d)
print(x1)
print(x2)


//Задание 2: Площадь прямоугольного треугольника

//Площадь
var a2 : Double = 3
var b2 : Double = 7

var c2 = (a2 * b2) / 2

print(c2)

//Гипотенуза
var a3 : Double = 3
var b3 : Double = 4

var c3 : Double = pow(3, 2) + pow(4, 2)

print(sqrt(c3))

//Периметр
var a4 : Double = 3
var b4 : Double = 4
var c4 : Double = 5

var p = a4 + b4 + c4

print(p)


//Задание 3: Вклад
var contribution : Double = 1000
var percent : Double = 13 * 0.01
var income : Double = contribution * percent
var profit : Double = contribution + income

    
for i in 1...5 {
    
    print(profit * Double(i))
}

//print(profit)
