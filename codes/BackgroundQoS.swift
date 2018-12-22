// Background QoS

// Work that operates in the background and 
// isn’t visible to the user, such as 
// indexing, synchronizing, and backups.
// Focuses on energy efficiency.

DispatchQueue.global(qos: .background).async {
    EventHelper.fireEvents(title: eventTitle)
}