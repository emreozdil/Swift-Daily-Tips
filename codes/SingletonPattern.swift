// Singleton Pattern

// Singletons are easy to understand. The singleton pattern guarantees 
// that only one instance of a class is instantiated.

// Shared URL Session
let sharedURLSession = URLSession.shared

// Standard User Defaults
let standardUserDefaults = UserDefaults.standard

class NetworkManager {
    static let shared = NetworkManager(baseURL: API.baseURL)

    let baseURL: URL

    // A private initializer can only be called by this class itself.
    private init(baseURL: URL) {
        self.baseURL = baseURL
    }
}

NetworkManager.shared