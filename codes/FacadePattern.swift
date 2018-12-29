// Facade Pattern

// The Facade design pattern provides a single interface
// to a complex subsystem. Instead of exposing the user
// to a set of classes and their APIs, you only expose
// one simple unified API.

class LibraryAPI {
    private let persistencyManager = PersistencyManager()
    private let httpClient = HTTPClient()
    var isOnline = false
    
    func getAlbums() -> [Album] {
        return persistencyManager.getAlbums()
    }
    
    func addAlbum(_ album: Album, at index: Int) {
        persistencyManager.addAlbum(album, at: index)
        if isOnline {
            httpClient.postRequest("/api/addAlbum", body: album.description)
        }
    }
    
    func deleteAlbum(at index: Int) {
        persistencyManager.deleteAlbum(at: index)
        if isOnline {
            httpClient.postRequest("/api/deleteAlbum", body: "\(index)")
        }
    }
}
