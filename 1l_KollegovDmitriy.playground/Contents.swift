import Foundation

// 1 задание
func quadratic(a: Double, b: Double, c: Double) -> Void {
    let discriminant = b * b - 4 * a * c;
    
    if discriminant < 0 {
        print("Корней нет")
    } else if discriminant == 0 {
        let x: Double
        if a != 0 {
            x = -b / (2 * a)
        } else {
            x = -b
        }
        print("1 корень: \(x)")
    } else {
        let root = sqrt(discriminant)
        let x1: Double
        let x2: Double
        
        if a != 0 {
            x1 = (-b + root) / (2 * a)
            x2 = (-b - root) / (2 * a)
        } else {
            x1 = -b + root
            x2 = -b - root
        }
        
        print("Корни: x1 \(x1), x2 \(x2)")
    }
}


// 2 задание
func triangle(a: Double, b: Double) -> Void {
    let hypotenuse = sqrt(pow(a, 2) + pow(b, 2))
    let s = (a * b) / 2
    let p = a + b + hypotenuse
    
    print("Гипотенуза: \(hypotenuse)")
    print("Площадь: \(s)")
    print("Периметр: \(p)")
    
}


// 3 задание
func deposit(depo: Double, percent: Double) -> Void {
    var deposit = depo
    for _ in (1...5) {
        deposit += deposit * (percent / 100)
    }
    print("Сумма вклада через 5 лет \(Int(deposit))")
}

quadratic(a: 2, b: -1, c: -15)
triangle(a: 3, b: 4)
deposit(depo: 100000, percent: 8)


