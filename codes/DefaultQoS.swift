// Default QoS

// The priority level of this QoS falls between
// user-initiated and utility. This QoS is not 
// intended to be used by developers to classify
// work. Work that has no QoS information assigned
// is treated as default, and the GCD global queue
// runs at this level.

DispatchQueue.global(qos: .default).async {
    self.loadMore()
}