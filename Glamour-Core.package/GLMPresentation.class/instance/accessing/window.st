window
	"If this presentation is the model of a window return the window."
	^ self dependents ifNotNil: [ :dependentsArray |
		dependentsArray ifNotEmpty: [ 
			(dependentsArray at: 1) isSystemWindow
				ifTrue: [ dependentsArray at: 1 ]
				ifFalse: [ nil ] ] ]