// Factory Pattern

// Factory pattern can come in handy when you want to reduce the dependency of a class
// on other classes. On the other hand, it encapsulates the object creation process
// and users can simply pass in parameters to a generic factory class without knowing
// how the objects are actually being created. Also it gives you a clean code.

protocol Human {
    var name : String {get set}
    func run()
    func eat()
    func sleep()
}

class Soldier: Human { 
    //...
}
class Civilian: Human { 
    //...
}

enum HumanType {
    case soldier
    case civilian
}

class HumanFactory {
    static let shared = HumanFactory()

    func getHuman(type: HumanType, name: String) -> Human {
        switch type {
            case .soldier:
                return Soldier(soldierName: name)
            case .civilian:
                return Civilian(civilianName: name)
        }
    }
}

let soldier = HumanFactory.shared.getHuman(type: .soldier, name: "Jay")
soldier.sleep()
//soldider  Jay is sleeping
let civilian = HumanFactory.shared.getHuman(type: .civilian, name: "Saman")
civilian.run()
//Saman is running
