testing method dictionary
bindingOf: varName
	self exists ifTrue:[
		(self realClass bindingOf: varName) ifNotNil:[:binding| ^binding].
	].
	^Smalltalk bindingOf: varName asSymbol