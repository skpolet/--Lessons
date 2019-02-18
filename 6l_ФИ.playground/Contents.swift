 
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
 
 struct Stack<T> {
    private var elements: [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.removeLast()
    }
    
    subscript(elements: Int ...) -> [Int] {
        var objects: [Int] = []
        for index in elements where index < self.elements.count {
            objects.append(index)
        }
        return objects
    }
 }
 
 let bubbleSort: ([Int]) -> [Int] = { (elements: [Int]) -> [Int] in
    var sortedArray = elements
    
    var sortedAboveIndex = elements.count
    repeat {
        var lastSwapIndex = 0
         for var i in 1..<sortedAboveIndex {
            if (sortedArray[i - 1] > sortedArray[i]) {
                sortedArray.swapAt(i, i-1)
                lastSwapIndex = i
                i += 1
            }
        }
        sortedAboveIndex = lastSwapIndex
    } while (sortedAboveIndex != 0)
    return sortedArray
 }
 
 func filter (array: [Int], predicate: ([Int]) -> [Int] ) -> [Int]{
    return predicate(array)
 }
 
 var sportsmenArr = Stack<Sportsmen>()
 var workerArr = Stack<Worker>()
 
 sportsmenArr.push(Sportsmen(name: "Oleg", lastname: "Morozov", age: 25))
 sportsmenArr.push(Sportsmen(name: "Igor", lastname: "Morozov", age: 31))
 
 workerArr.push(Worker(name: "Alex", lastname: "Ivanov", age: 20))
 workerArr.push(Worker(name: "Sergey", lastname: "Ivanov", age: 34))
 workerArr.push(Worker(name: "Ivan", lastname: "Ivanov", age: 19))

 print("Сортировка пузырьком : \n\(filter(array: [10,4,56,22,11,5], predicate: bubbleSort))\nВозвращаем элементы с существующими индексами :\n\(workerArr[0,2,3])")

 

