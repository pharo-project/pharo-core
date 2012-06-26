modifying
baseCategoryOfMethod: aMethodReference
	| oldCat oldPrefix tokens | 
	oldCat := aMethodReference category.
	({ 'as yet unclassified'. 'all' } includes: oldCat) ifTrue: [ oldCat := '' ].
	tokens := oldCat findTokens: '*-' keep: '*'.

	"Strip off any old prefixes"
	((tokens at: 1 ifAbsent: [ '' ]) = '*') ifTrue: [
		[ ((tokens at: 1 ifAbsent: [ '' ]) = '*') ]
			whileTrue: [ tokens removeFirst ].
		oldPrefix := tokens removeFirst asLowercase.
		[ (tokens at: 1 ifAbsent: [ '' ]) asLowercase = oldPrefix ]
			whileTrue: [ tokens removeFirst ].
	].

	tokens isEmpty ifTrue: [^ 'as yet unclassified'].
	^ String streamContents:
		[ :s |
		tokens
			do: [ :tok | s nextPutAll: tok ]
			separatedBy: [ s nextPut: $- ]]