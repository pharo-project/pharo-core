externalType: descriptorClass
	"Parse an return an external type"
	| xType |
	xType := descriptorClass atomicTypeNamed: currentToken value.
	xType == nil ifTrue:["Look up from class scope"
		Symbol hasInterned: currentToken value ifTrue:[:sym|
			xType := descriptorClass structTypeNamed: sym]].
	xType == nil ifTrue:[
		xType := descriptorClass forceTypeNamed: currentToken value].
	self step.
	(self matchToken:#*)
		ifTrue:[^xType asPointerType]
		ifFalse:[^xType]