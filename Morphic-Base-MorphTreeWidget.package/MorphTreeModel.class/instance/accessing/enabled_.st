enabled: aBoolean
	aBoolean ~= enabled
		ifTrue: [ 
			enabled := aBoolean.
			self changed: #enabled ]