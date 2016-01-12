window
	"The default debugger from Pharo defines this method.
	Some tools use it and break. Try to return the window
	if possible. Kind of a hack."
	^ self dependents ifNotNil: [ :dependentsArray |
		dependentsArray ifNotEmpty: [ 
			(dependentsArray at: 1) isSystemWindow
				ifTrue: [ dependentsArray at: 1 ]
				ifFalse: [ nil ] ] ]