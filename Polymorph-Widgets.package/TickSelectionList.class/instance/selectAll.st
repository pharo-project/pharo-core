private
selectAll
	
	self rootItems do: [:each | each selected: true ].
	self noticeSelectionChanged