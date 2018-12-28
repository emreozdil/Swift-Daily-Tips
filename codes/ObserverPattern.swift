// Observer Pattern

// The Observer design pattern defines a one-to-many dependency between objects so
// that when one object changes state, all its dependents are notified and updated
// automatically. The Observer pattern is essentially a publish-and-subscribe model
// in which the subject and its observers are loosely coupled. Communication can
// take place between the observing and observed objects without either needing
// to know much about the other. Cocoa implements the observer pattern in two ways:
// Notifications and Key-Value Observing (KVO).

protocol Observer {
    var id : Int { get } // property to get an id
    func update<ObservableValue>(with newValue: ObservableValue)
}

protocol Observable {
    associatedtype ObservableValue
    var value : ObservableValue { get set }
    var observers : [Observer] { get set }
    
    func addObserver(observer: Observer)
    func removeObserver(observer: Observer)
    func notifyAllObservers<ObservableValue>(with newValue: ObservableValue)
}