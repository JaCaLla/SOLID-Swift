// Violating ISP
protocol Worker {
    func work()
    func eat()
}

class Human: Worker {
    func work() {
        print("Human is working")
    }
    func eat() {
        print("Human is eating")
    }
}

class Robot: Worker {
    func work() {
        print("Robot is working")
    }
    func eat() {
        // Robots don't eat, but forced to implement this method
        fatalError("Robots don't eat!")
    }
}

// Following ISP
protocol Workable {
    func work()
}

protocol Eatable {
    func eat()
}

class Human: Workable, Eatable {
    func work() {
        print("Human is working")
    }
    func eat() {
        print("Human is eating")
    }
}

class Robot: Workable {
    func work() {
        print("Robot is working")
    }
}
