updateSliderWith: aMethod
	| prg min max old | 
	
	prg := aMethod pragmas detect: [:e | e keyword beginsWith: 'api:' ] ifNone: [ ^ self ].
	min := prg arguments second.
	max := prg arguments third.
	"
	
	old := self model perform: prg arguments fourth."
	
	max isInteger
		ifTrue: [ choice max: max ]
		ifFalse: [ choice max: (self model perform: max) ].
	min isInteger
		ifTrue: [ choice min: min ]
		ifFalse: [ choice min: (self model perform: min) ].
		
	"self isSetting ifFalse:[
		self isSetting: true.
		choice value: old.
		self isSetting: false ]"