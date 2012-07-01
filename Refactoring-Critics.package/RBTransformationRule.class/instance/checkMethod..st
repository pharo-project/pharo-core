running
checkMethod: aContext 
	(self rewriteRule canMatchMethod: aContext compiledMethod) 
		ifFalse: [ ^ self ].
	class := aContext selectedClass.
	(self rewriteRule executeTree: aContext parseTree) ifTrue: [
		(self class recursiveSelfRule executeTree: rewriteRule tree initialAnswer: false) 
			ifFalse: [ builder compile: rewriteRule tree newSource in: class classified: aContext protocol ] ]