

protocol Car {
    func switchWindow(window: SwitcherWindows)
    func switchEngine(engine: SwitcherEngine)
    func switchDoors(door: SwitcherDoor)
}


enum SwitcherWindows {
    
    case leftFront(window :Bool)
    case rightFront(window :Bool)
    case leftBack(window :Bool)
    case rightBack(window :Bool)
}

enum SwitcherEngine {
    case start, stop
}

enum SwitcherDoor {
    case open, close
}

extension Car{
    
    func switchEngine(engine: SwitcherEngine){
        switch engine {
        case .start:
            print("Двигатель запущен")
        case .stop:
            print("Двигатель выключен")
        }
    }
    
    func switchDoors(door: SwitcherDoor){
        switch door{
        case .open:
        print("Дверь открыта")
        case .close:
        print("Дверь закрыта")
        }
    }
    
    func switchWindow(window: SwitcherWindows){
        switch window {
        case .leftFront(let window):
            print( window ? "Левое переднее окно закрыто" : "Левое переднее окно открыто")
        case .rightFront(let window):
            print( window ? "Правое переднее окно закрыто" : "Правое переднее окно открыто")
        case .leftBack(let window):
            print( window ? "Левое заднее окно закрыто" : "Левое заднее окно открыто")
        case .rightBack(let window):
            print( window ? "Правое заднее окно закрыто" : "Правое заднее окно открыто")
        }
    }
}

enum Engine{
    case oil
    case disel
}

class SportCar: Car{
    var model: String
    var isTurbo: Bool
    var year: Int
    var engine: Engine
    init(isTurbo: Bool, model: String, year: Int, engine: Engine){
        self.isTurbo = isTurbo
        self.model = model
        self.year = year
        self.engine = engine
    }
}

class TrunkCar: Car{
    var model: String
    var theTrunk : Space
    var year: Int
    var engine: Engine
    init(theTrunk: Space, model: String, year: Int, engine: Engine){
        self.theTrunk = theTrunk
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    struct Space{
        var freeSpace : Int
        var filledSpace : Int
    }
}

extension SportCar: CustomStringConvertible{
    var description: String {
        return String(isTurbo ? "Турбированный двигатель" : "Турбо двигатель отсутствует")+String("\n Модель: \(model) ")+String("\n Год выпуска: \(year) ")+String("\n Двигатель: \(engine) ")
    }
    
    
}

extension TrunkCar: CustomStringConvertible{
    var description: String {
        return  String("Свободное пространство в фургоне : \(theTrunk.freeSpace), \nЗагруженно в фургон :\(theTrunk.filledSpace)")+String("\n Модель: \(model) ")+String("\n Год выпуска: \(year) ")+String("\n Двигатель: \(engine) ")
    }
}

var sportCar : SportCar = SportCar(isTurbo: true, model: "Nissan", year: 2002, engine: .oil)
print(sportCar.description)
sportCar.switchDoors(door: .close)
sportCar.switchEngine(engine: .start)
sportCar.switchWindow(window: .leftBack(window: true))
print("----------------")
var trunkCar : TrunkCar = TrunkCar(theTrunk: TrunkCar.Space(freeSpace: 2000, filledSpace: 500), model: "Saab", year: 2005, engine: .disel)
print(trunkCar.description)
trunkCar.switchEngine(engine: .start)
trunkCar.switchDoors(door: .open)
