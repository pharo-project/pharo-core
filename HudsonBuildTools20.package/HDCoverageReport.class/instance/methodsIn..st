private
methodsIn: aPackage
	aPackage isNil ifTrue: [ ^ #() ].
	^ aPackage methods reject: [ :method | 
		(self ignoredSelectors includes: method methodSymbol)
			or: [ method compiledMethod isAbstract
			or: [ method compiledMethod refersToLiteral: #ignoreForCoverage ] ] ]