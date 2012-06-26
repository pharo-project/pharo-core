selection change
addAllToSelection: aCollection

	self searchedElement: nil.
	aCollection do: [:m | m highlight. m selected: true]. 
