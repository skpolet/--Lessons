

class Car {
    var model : String
    var year : Int
    var engine : String
    var transmission : Transmission
    var color : String
    var isEngineStart : Bool = false
    
    enum Transmission {
        case automatic
        case manual
    }

    init(model: String, year: Int, engine: String, transmission: Transmission, color: String) {
        self.model = model
        self.year = year
        self.engine = engine
        self.transmission = transmission
        self.color = color
        
    }
    
    func infoAboutCar(){
            print("это автомобиль : \n \(model), \n \(engine), \n \(isEngineStart), \n \(year), \n \(transmission), \n \(color)")
    }
    
    func startEngine(){
        if isEngineStart{
            isEngineStart = false
        }else{
            isEngineStart = true
        }
    }
    
    struct Space{
        var freeSpace : Int
        var filledSpace : Int
    }
}
class SportCar: Car {
    var isTurbo : Bool
    
    init(model: String, year: Int, engine: String, transmission: Transmission, color: String, isTurbo: Bool) {
        self.isTurbo = isTurbo
        super.init(model: model, year: year, engine: engine, transmission: transmission, color: color)
    }
    
    override func infoAboutCar() {
        print("это спорткар : \n \(model), \n \(engine), \n \(isEngineStart), \n \(year), \n \(transmission), \n \(color), \n \(isTurbo)")
    }
}

class TrunkCar: Car {
    var theTrunk : Space
    
    init(model: String, year: Int, engine: String, transmission: Transmission, color: String, theTrunk: Space) {
        self.theTrunk = theTrunk
        super.init(model: model, year: year, engine: engine, transmission: transmission, color: color)
    }
    
    override func infoAboutCar() {
        print("это грузовой автомобиль : \n \(model), \n \(engine), \n \(isEngineStart), \n \(year), \n \(transmission), \n \(color), \n \(theTrunk)")
    }
}

let turboCar: SportCar = SportCar (model: "Nissan", year: 2000, engine: "Oil", transmission: .automatic, color: "Red", isTurbo: true)
turboCar.infoAboutCar()

let trunkCar: TrunkCar = TrunkCar (model: "Saab", year: 2010, engine: "Disel", transmission: .manual, color: "Black", theTrunk: Car.Space(freeSpace: 2000, filledSpace: 500))
trunkCar.infoAboutCar()



