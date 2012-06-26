private
deselectAll
	
	self rootItems do: [:each | each selected: false ].
	self noticeSelectionChanged