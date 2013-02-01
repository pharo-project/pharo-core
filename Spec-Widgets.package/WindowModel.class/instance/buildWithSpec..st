private
buildWithSpec: aSpec
	"Build the widget using the spec name provided as argument"
	| widget |
	
	(self spec notNil and: [ self needRebuild not ])
		ifTrue: [ widget := self spec instance ]
		ifFalse: [ 
			widget := SpecInterpreter private_buildWidgetFor: self withSpec: self defaultSpecSelector.
			self addModelIn: widget withSpec: aSpec ].

	self extent ifNotNil: [:ex | 
		(widget respondsTo: #extent:)
			ifTrue: [ widget extent: ex ]].
		
	^ widget