 class Sportsmen{
    var name : String
    var lastname : String
    var age : Int
    
    init(name: String, lastname: String, age: Int){
        self.name = name
        self.lastname = lastname
        self.age = age
    }
 }
 
 class Worker{
    var name : String
    var lastname : String
    var age : Int
    
    init(name: String, lastname: String, age: Int){
        self.name = name
        self.lastname = lastname
        self.age = age
    }
 }
 
 class Human {
    var sportsmen : Sportsmen?
    var worker : Worker?
    
    
    convenience init(worker: Worker){
        self.init(worker: worker)
    }
    
    convenience init(sportsmen: Sportsmen){
        self.init(sportsmen: sportsmen)
    }
 }
