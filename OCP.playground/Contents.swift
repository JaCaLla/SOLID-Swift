import UIKit

protocol Shape {
    func area() -> Double
}

struct Circle: Shape {
    let radius: Double
    func area() -> Double {
        return 3.14 * radius * radius
    }
}

struct Square: Shape {
    let side: Double
    func area() -> Double {
        return side * side
    }
}

// Adding a new shape without modifying existing code
struct Triangle: Shape {
    let base: Double
    let height: Double
    func area() -> Double {
        return 0.5 * base * height
    }
}

// Usage
let shapes: [Shape] = [
    Circle(radius: 5),
    Square(side: 4),
    Triangle(base: 6, height: 3)
]

for shape in shapes {
    print("Area: \(shape.area())")
}
