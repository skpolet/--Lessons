import Foundation
import UIKit

enum BuyCarError: Error{
    case invalidSelection
    case outOfStock
    case insufficientFunds(coinsNeeded: Int)
}

struct Car{
    var name : String
    var color : UIColor
    var price : Int
    var count : Int
}

class BuyCar {
    private var cars = [
        "ShowRoomKrylatskoe" : Car(name: "BMW", color: .black, price: 7000, count: 5),
        "CarPrice" : Car(name: "Skoda", color: .white, price: 3000, count: 0),
        "TradeIN" : Car(name: "Volvo", color: .gray, price: 5000, count: 15)
    ]
    var coinsDeposited = 0
    
    func buy(itemNamed name: String) throws -> Car{
        guard let item = cars[name] else {
            //return (nil, BuyCarError.invalidSelection)
            throw BuyCarError.invalidSelection
        }
        
        guard item.count > 0 else {
            //
            throw BuyCarError.outOfStock
        }
        guard item.price <= coinsDeposited else {
            //return(nil, BuyCarError.insufficientFunds(coinsNeeded: item.price - coinsDeposited))
            throw BuyCarError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        cars[name] = newItem
        return newItem
    }
}

extension Car: CustomStringConvertible {
    public var description: String {
        return "Автомобиль \(color) \(name) в  кол-ве 1 единицы и  приобретен за \(price)."
    }
}

let buyCar = BuyCar()
buyCar.coinsDeposited = 50000
do {
    let sell = try buyCar.buy(itemNamed: "ShowRoomKrylatskoe")
    print(sell.description)
} catch BuyCarError.invalidSelection {
    print("Такого автомобиля не существует")
} catch BuyCarError.insufficientFunds(let coinsNeeded) {
    print("Введенная сумма недостаточна. Необходимо еще \(coinsNeeded) долларов")
} catch BuyCarError.outOfStock {
    print("Автомобиля нет в наличии")
} catch let error {
    print(error.localizedDescription)
}


