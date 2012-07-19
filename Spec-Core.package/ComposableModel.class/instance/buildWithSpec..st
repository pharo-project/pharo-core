protocol
buildWithSpec: aSpec
	"Build the widget using the spec name provided as argument"
	| widget |
	
	(self spec notNil and: [ self needRebuild not ])
		ifTrue: [ | old |
			self needRebuild: true.
			old := self widget.
			old removeAllMorphs.
			self ensureExtentFor: old.
			widget := SpecInterpreter buildMorphFor: self withSpec: aSpec.
			widget submorphs do:[ :e |  old addMorphBack: e ].
			self spec instance: old.
			^ old ]
		ifFalse: [ widget := SpecInterpreter buildMorphFor: self withSpec: aSpec. ].

	self ensureExtentFor: widget.
		
	^ widget