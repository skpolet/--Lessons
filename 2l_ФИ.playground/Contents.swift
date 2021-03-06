
func evenNumber(num: Int) -> Bool{
    return num % 2 == 0
}

func theReminder(num : Int) -> Bool{
    return num % 3 == 0
}

func makeArr() ->[Int]{
    var arr : [Int] = []
    
    for i in 1...100{
        arr.append(i)
    }
    return arr
}

func removeElementFromArray(arr: inout [Int]) ->[Int]{
    for object in arr {
        if(evenNumber(num: object) || !theReminder(num: object)){
            if let index = arr.index(of: object) {
                arr.remove(at: index)
            }
        }
    }
    return arr
}

func fibonacci() ->[Int]{
    var arr : [Int] = []
    for i in 0..<80 {
        if(arr.count == 0){
            arr.append(0)
        }else if(arr.count == 1){
            arr.append(1)
        }else{
            arr.append(arr[i-1]+arr[i-2])
        }
    }
    return arr
}

func methodErastophen(arr: inout [Int]) ->[Int]{
var result : [Int] = []

    for i in 0..<arr.count {
        if(arr[i] != 0){
                if !((arr[i]%2 == 0) && (arr[i] != 2) || (arr[i]%3 == 0) && (arr[i] != 3) || (arr[i]%5 == 0) && (arr[i] != 5) || (arr[i]%7 == 0) && (arr[i] != 7))
                {
                    if(arr[i] != 1){
                    result.append(arr[i])
                    }
            }
        }
    }
    return result
}

// первое задание
print("Первое задание :\n",evenNumber(num: 2) ? "Число четное" : "Число не четное")
// второе задание
print("Второе задание :\n",evenNumber(num: 3) ? "Число делится на 3 без остатка" : "Число делится на 3 с остатком")
// третье задание
var arr = makeArr()
print("Третье задание :\n",arr)
// четвертое задание
print("Четвертое задание :\n",removeElementFromArray(arr: &arr))
// пятое задание(до 80)
print("Пятое задание :\n",fibonacci())
// задание шестое
var arr2 = makeArr()
print("Шестое задание :\n", methodErastophen(arr: &arr2))
