protocol
selectedItems

	^ self rootItems select: [:each | each selected ] thenCollect: #item