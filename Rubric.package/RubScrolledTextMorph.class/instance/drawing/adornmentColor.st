adornmentColor
	"color to Indicate edit status for the given morph."

	self hasEditingConflicts
		ifTrue: [ ^ Color red ].
	self hasUnacceptedEdits
		ifTrue: [ 
			self model wantsDiffFeedback
				ifTrue: [ ^ Color yellow darker ]
				ifFalse: [ ^ Color orange ] ].
	self model wantsDiffFeedback
		ifTrue: [ ^ Color green ].
	^ Color transparent