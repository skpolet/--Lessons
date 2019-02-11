

class Car {
    var model : String
    var year : Int
    var engine : String
    var isEngineStart : Bool = false
    var theTrunk : Space?
    var isTurbo : Bool = false
    
    var trunkCar : Car?
    var sportCar : Car?

    func autoActions(action: Actions) {
        switch action {
        case .startEngine:
            isEngineStart = isEngineStart ? false : true
        case .makeSportCar:
            sportCar?.isTurbo = true
            sportCar?.isEngineStart = true
        case .makeTrunkCar(let space):
            trunkCar?.isEngineStart = true
            trunkCar?.theTrunk = space
            break
        }
    }
    init(model: String, year: Int, engine: String) {
        self.model = model
        self.year = year
        self.engine = engine
        
    }
    
    func infoAboutCar(){
        if (trunkCar != nil){
            print("это грузовик : \n \(model), \n \(engine), \n \(isEngineStart), \n \(String(describing: theTrunk)), \n \(year)")
    }
        else{
            print("это спорткар : \n \(model), \n \(engine), \n \(isEngineStart), \n \(isTurbo), \n \(year)")
        }
    }
}

enum Actions{
    case startEngine
    case makeSportCar()
    case makeTrunkCar(space: Space)
    
}
struct Space{
    var freeSpace : Int
    var filledSpace : Int
}

var car : Car = Car(model: "Nissan", year: 1990, engine: "Oil")
car.sportCar = car
car.autoActions(action: .makeSportCar())

var trunkCar : Car = Car(model: "Volvo", year: 2001, engine: "Disel")
trunkCar.trunkCar = trunkCar
trunkCar.autoActions(action: .makeTrunkCar(space: Space(freeSpace: 2000, filledSpace: 500)))

car.infoAboutCar()
trunkCar.infoAboutCar()

