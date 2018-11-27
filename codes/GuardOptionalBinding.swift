/*
  What makes the “guard” statement truly stand out,
  however, is that unwrapped optional values remain
  available in the rest of the code block.
*/

private func fetchContents() {
    webService.fetchCategories { [weak self] (response) in
        // Optional Binding for self
        guard let self = self else { return }
        self.createloadMoreRequest(content: response)               
    }
}

private func createloadMoreRequest(content: Content?) {
    // Optional Binding for content
    guard let content = content else { return }
    let categoryId = content.categoryId
    self.loadMore(id: categoryId)
}