as yet unclassified
buildWithSpec: aSpec
	"Build the widget using the spec name provided as argument"
	| widget |
	
	(self spec notNil and: [ self needRebuild not ])
		ifTrue: [ ^ self widget ]
		ifFalse: [ widget := SpecInterpreter buildMorphFor: self withSpec: aSpec ].

	self ensureExtentFor: widget.
		
	^ widget