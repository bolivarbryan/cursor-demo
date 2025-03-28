import Foundation

struct WaterIntake: Identifiable, Codable {
    let id: UUID
    let amount: Double // in milliliters
    let date: Date
    
    init(id: UUID = UUID(), amount: Double, date: Date = Date()) {
        self.id = id
        self.amount = amount
        self.date = date
    }
    
    func isValid() -> Bool {
        return amount > 0 && amount <= 1000 // Maximum reasonable amount per intake (1L)
    }
} 