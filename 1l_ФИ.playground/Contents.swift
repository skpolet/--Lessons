import Foundation

/////// Первое задание ////////

/// формула квадратного уравнения
//a x2 + b x + c = 0

/// входные данные
    
let a : Double = 1
let b : Double = 5
let c : Double = 2

    if a == 0{
        print("a не может быть равен 0")
    }else{
        /// формула дискриминанта
        // D = b2 - 4 a c.
        
        let b2 =  pow(b, 2)
        let d = b2 - (4 * a * c)
        
        switch d {
        case 0:
            let x = (b * -1) / (2 * a)
            print("Так как дискриминант равен нулю то, квадратное уравнение имеет один действительный корень :", Int(x))
            break
        case ...0:
            print("Так как дискриминант меньше нуля, то уравнение не имеет действительных решений")
            break
        case 0...:
            let x1 = ((b * -1) - sqrt(Double(d))) / (2 * a)
            let x2 = ((b * -1) + sqrt(Double(d))) / (2 * a)
            print("Так как дискриминант больше нуля то, квадратное уравнение имеет два действительных корня : \n x1:", x1, "\n x2:", x2)
            break
        default:
            break
        }
        
/////// Второе задание ////////
        
    /// входные данные
        
        let ab : Double = 2
        let ac : Double = 3
        
        print("Длинна первого катета :", ab, "\nДлинна второго катета :", ac)
        
        let bc = pow(ab,2) + pow(ac,2)
        let s = (ab * ac) / 2
        let p = ab + ac + bc
        
        print("Площадь треугольника :", s, "\nПериметр треугольника:", p)
        
        let g = sqrt(pow(ab,2)+pow(ac,2))
        
        print("Гипотенуза треугольника :", g)
        
/////// Третье задание ////////
        
        /// входные данные
        
        let sumVkad : Double = 5000000
        let percent : Double = 5
        let srok : Double = 365 * 5
        
        let res = (sumVkad * percent * srok) / (365 * 100)
        
        print("Сумма вклада :", res)
}


