checkMethod: aMethod 
	aMethod isFromTrait
		ifTrue: [ ^ self ].
	(self rewriteRule canMatchMethod: aMethod) 
		ifFalse: [ ^ self ].
	class := aMethod methodClass.
	(self rewriteRule executeTree: aMethod ast copy) ifTrue: [
		(self class recursiveSelfRule executeTree: rewriteRule tree initialAnswer: false) 
			ifFalse: [ builder compile: rewriteRule tree newSource in: class classified: aMethod protocol ] ]