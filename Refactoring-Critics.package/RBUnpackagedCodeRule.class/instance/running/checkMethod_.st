checkMethod: aMethod
	(self packageSatisfying: [ :info | info includesMethod: aMethod selector ofClass: aMethod methodClass ]) isNil
		ifTrue: [ self result addMethod: aMethod ]