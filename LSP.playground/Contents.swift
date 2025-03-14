protocol Vehicle {
    func move()
}

class Car: Vehicle {
    func move() {
        print("Car is moving")
    }
    
    func honk() {
        print("Honk honk!")
    }
}

class Bicycle: Vehicle {
    func move() {
        print("Bicycle is moving")
    }
    
    func ringBell() {
        print("Ring ring!")
    }
}

func startJourney(vehicle: Vehicle) {
    vehicle.move()
}

let car = Car()
let bicycle = Bicycle()

startJourney(vehicle: car)      // Output: Car is moving
startJourney(vehicle: bicycle)  // Output: Bicycle is moving

