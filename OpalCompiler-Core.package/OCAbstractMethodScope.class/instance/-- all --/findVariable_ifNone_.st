findVariable: aBlock ifNone: aNotFound

	(aBlock value: thisContextVar) ifTrue: [^ thisContextVar].
	self allTemps do: [ :var | (aBlock value: var) ifTrue: [ ^ var ] ].
	
	outerScope ifNotNil: [
		^  outerScope findVariable: aBlock ifNone: aNotFound ]