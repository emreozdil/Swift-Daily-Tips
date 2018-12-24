// Dispatch Group

// Let’s say you’ve got several long running tasks to perform. After all of
// them have finished, you’d like to run some further logic. You could run
// each task in a sequential fashion, but that isn’t so efficient - you’d
// really like the former tasks to run concurrently. DispatchGroup enables
// you to do exactly this.

let dispatchGroup = DispatchGroup()

dispatchGroup.enter()
loadUserActivities { dispatchGroup.leave() }

dispatchGroup.enter()
loadUserPosts { dispatchGroup.leave() }

dispatchGroup.notify(queue: .main) {
    collectionView.reloadData()
}