enum UnexpectedError: Error {
    case outOfRange, invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case noBuyer
}


struct Car {
    let price: Double
    let volume: Double
    let doors: Int
    let count: Int
    let name: Name
}

struct Name {
    brand: String
}


class Dealer {

    var garage = [
        "Audi": Car(price: 10000.0, volume: 5.5, doors: 4, count: 3, Name(brand: "Audi")),
        "BMW": Car(price: 11000.0, volume: 6.0, doors: 4, count: 2, Name(brand: "BMW")),
        "MB": Car(price: 10500.0, volume: 5.0, doors: 2, count: 5, Name(brand: "Mercedes-benz"))
    ]

    var downPayment = 0

    func sellCar(carName name: String) throws -> Name {
        guard let check = garage[name] else {
            throw UnexpectedError.invalidSelection
        }
        guard check.count > 0 else {
            throw UnexpectedError.outOfRange
        }
        guard check.price <= downPayment else {
            throw UnexpectedError.insufficientFunds(coinsNeeded: check.price - downPayment)
        }

        downPayment -= check.price
        var newCheck = check
        newCheck.count -= 1
        garage[name] = newCheck

        return newCheck.name
    }
}

    let dealer = Dealer()
    do {
        let sell = try sellCar(name: "Audi")
    } catch UnexpectedError.invalidSelection {
        print("Такой машины не существует")
    } catch UnexpectedError.insufficientFunds(let coinsNeeded) {
        print("Введенная сумма недостаточна. Необходимо еще \(coinsNeeded) монет")
    } catch UnexpectedError.noBuyer {
        print("Покупатель не найден")
    } catch let error {
        print(error.localizedDescription)
    }

