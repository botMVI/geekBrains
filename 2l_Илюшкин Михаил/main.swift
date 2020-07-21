//Четное или нет
var x = 3

if x % 2 == 0 {
    print("Число четное")
} else {
    print("Число не четное")
}

// Деление без остатка на 3

var y = 33

if y % 3 == 0 {
    print("Число делиться на 3 без остатка")
} else {
    print("Число не делится на 3 без остатка")    
}

// Массив из 100 чисел

var array: [Int] = []

for index in 0...100 {
    array.append(index)
}

// Удаление чисел из массива: четные и не делятся 3

for (index, value) in testArray.enumerated() {
    if (value % 2 == 0 && (value % 3) > 0) {
        testArray.remove(at: testArray.index(of: value))
    }
}

//Числа Фибоначчи

var arr:[Int] = []
arr[0] = 0
arr[1] = 1
arr[2] = 1


for i in 3...100 {
    arr[i] = arr[i - 1] + arr[i - 2]
}
