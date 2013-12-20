setSelectionFromModel: aSelection

	self widget ifNotNil: [:w | 
		w selectionInterval ~= aSelection ifTrue: [
			w setSelection: aSelection ]]