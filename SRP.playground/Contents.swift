import UIKit

// Violating SRP
class EmployeeNonSRP {
    let name: String
    let position: String
    let salary: Double
    
    init(name: String, position: String, salary: Double) {
        self.name = name
        self.position = position
        self.salary = salary
    }
    
    func calculateTax() -> Double {
        // Tax calculation logic
        return salary * 0.2
    }
    
    func saveToDatabase() {
        // Database saving logic
        print("Saving employee to database")
    }
    
    func generateReport() -> String {
        // Report generation logic
        return "Employee Report for \(name)"
    }
}

// Adhering to SRP
class Employee {
    let name: String
    let position: String
    let salary: Double
    
    init(name: String, position: String, salary: Double) {
        self.name = name
        self.position = position
        self.salary = salary
    }
}

class TaxCalculator {
    func calculateTax(for employee: Employee) -> Double {
        return employee.salary * 0.2
    }
}

class EmployeeDatabase {
    func save(_ employee: Employee) {
        print("Saving employee to database")
    }
}

class ReportGenerator {
    func generateReport(for employee: Employee) -> String {
        return "Employee Report for \(employee.name)"
    }
}
