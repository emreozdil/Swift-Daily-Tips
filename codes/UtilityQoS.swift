// Utility QoS

// Work that may take some time to complete and doesn’t require
// an immediate result, such as downloading or importing data.
// Utility tasks typically have a progress bar that is visible
// to the user. Focuses on providing a balance between
// responsiveness, performance, and energy efficiency.


DispatchQueue.global(qos: .utility).async {
    API.readNotification(notificationId)
}