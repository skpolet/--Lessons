
struct Auto{
    var isEngineStart : Bool
    var isWindowOpen : Window
    var mark : String
    var year : Int
    var body : Space
    var theTrunk : Space
    
    mutating func autoActions(action: Actions) {
        switch action {
        case .switchWindows(let window):
            isWindowOpen = window
            break
        case .startEngine:
            isEngineStart = isEngineStart ? false : true
            break
        case .switchCargoBody(let space):
            body = space
            break
        case .switchCargoTrunk(let space):
            theTrunk = space
            break
        }
    }
}

struct Space{
    var freeSpace : Int
    var filledSpace : Int
}

struct Window{
    var leftFront : Bool
    var rightFront : Bool
    var leftBack : Bool
    var rightBack : Bool
}

struct Bus{
    var isEngineStart : Bool
    var isWindowOpen : Window
    var mark : String
    var year : Int
    var body : Space
    var theTrunk : Space
    
    mutating func busActions(action: Actions) {
        switch action {
        case .switchWindows(let window):
            isWindowOpen = window
            break
        case .startEngine:
            isEngineStart = isEngineStart ? false : true
            break
        case .switchCargoBody(let space):
            body = space
            break
        case .switchCargoTrunk(let space):
            theTrunk = space
            break
        }
    }
}

enum Actions{
    case startEngine
    case switchWindows( window: Window)
    case switchCargoBody( space: Space)
    case switchCargoTrunk( space: Space)
}

enum TestAutoOrBus{
    case auto
    case bus
}

func start(action: TestAutoOrBus){
    switch action {
    case .auto:
        var auto = Auto(isEngineStart: true, isWindowOpen: Window(leftFront: false, rightFront: false, leftBack: false, rightBack: false), mark: "Nissan", year: 2003, body: Space(freeSpace: 2000, filledSpace: 500), theTrunk: Space(freeSpace: 500, filledSpace: 300))
        
        print("auto Init:", auto)
        
        auto.autoActions(action: .startEngine)
        
        print("auto stop engine:", auto)
        
        auto.autoActions(action: .switchWindows(window: Window(leftFront: true, rightFront: true, leftBack: false, rightBack: false)))
        
        print("auto open front windows:", auto)
        
        auto.autoActions(action: .switchCargoBody(space: Space(freeSpace: 1800, filledSpace: 700)))
        
        print("auto change cargo body:", auto)
        
        auto.autoActions(action: .switchCargoTrunk(space: Space(freeSpace: 1800, filledSpace: 700)))
        
        print("auto change cargo body:", auto)
        break
    case .bus:
        var bus = Bus(isEngineStart: true, isWindowOpen: Window(leftFront: false, rightFront: false, leftBack: false, rightBack: false), mark: "Volvo", year: 2001, body: Space(freeSpace: 20000, filledSpace: 5000), theTrunk: Space(freeSpace: 5000, filledSpace: 3000))
        
        print("bus Init:", bus)
        
        bus.busActions(action: .startEngine)
        
        print("bus stop engine:", bus)
        
        bus.busActions(action: .switchWindows(window: Window(leftFront: true, rightFront: true, leftBack: false, rightBack: false)))
        
        print("bus open front windows:", bus)
        
        bus.busActions(action: .switchCargoBody(space: Space(freeSpace: 18000, filledSpace: 7000)))
        
        print("bus change cargo body:", bus)
        
        bus.busActions(action: .switchCargoTrunk(space: Space(freeSpace: 18000, filledSpace: 7000)))
        
        print("bus change cargo body:", bus)
        break
    }
}

start(action: .auto)


