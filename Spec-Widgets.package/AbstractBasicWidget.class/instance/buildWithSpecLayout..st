as yet unclassified
buildWithSpecLayout: aSpecLayout
	"Build the widget using the spec name provided as argument"
	| widget |
	
	(self spec notNil and: [ self needRebuild not ])
		ifTrue: [ ^ self widget ]
		ifFalse: [ widget := SpecInterpreter interpretASpec: aSpecLayout model: self ].
		
	self ensureExtentFor: widget.
	
	^ widget