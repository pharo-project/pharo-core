tools
browse

	^ Smalltalk tools browser
		fullOnClass: self realClass 
		selector: (self isDefined ifTrue: [ self selector ] ifFalse: [ nil ])