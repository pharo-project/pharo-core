protocol
buildWithSpecLayout: aSpecLayout
	"Build the widget using the spec name provided as argument"

	| widget |
	(self spec notNil and: [ self needRebuild not ])
		ifTrue: [ | old |
			self needRebuild: true.
			old := self widget.
			old removeAllMorphs.
			self ensureExtentFor: old.
			widget := SpecInterpreter new interpretASpec: aSpecLayout model: self.
			widget submorphs do: [ :e | 
					old addMorph: e.
					e adoptPaneColor: old paneColor ].
			self spec instance: old.
			^ old ]
		ifFalse: [ widget := SpecInterpreter new interpretASpec: aSpecLayout model: self ].
		
	self ensureExtentFor: widget.
	^ widget