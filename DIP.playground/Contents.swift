
protocol Engine {
    func start()
}

class ElectricEngine: Engine {
    func start() {
        print("Electric engine starting")
    }
}

class Car {
    private let engine: Engine
    
    init(engine: Engine) {
        self.engine = engine
    }
    
    func startCar() {
        engine.start()
    }
}

let electricEngine = ElectricEngine()
let car = Car(engine: electricEngine)
car.startCar() // Output: Electric engine starting
