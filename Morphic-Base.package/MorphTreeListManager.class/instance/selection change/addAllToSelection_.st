addAllToSelection: aCollection

	self searchedElement: nil.
	aCollection do: [:m | m 
		highlight;
		selected: true ]