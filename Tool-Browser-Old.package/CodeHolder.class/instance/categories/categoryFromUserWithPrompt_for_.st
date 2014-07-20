categoryFromUserWithPrompt: aPrompt for: aClass
	"self new categoryFromUserWithPrompt: 'testing' for: SystemDictionary"

	| labels myCategories reject lines newName  | 
	labels := OrderedCollection new.
	labels addAll: (myCategories := aClass organization categories asSortedCollection:
		[:a :b | a asLowercase < b asLowercase]).
	reject := myCategories asSet.
	reject
		add: Protocol nullCategory;
		add: Protocol unclassified.
	lines := OrderedCollection with: 1 with: (myCategories size + 1).

	aClass allSuperclasses do:
		[:cls | | cats |
			cats := cls organization categories reject:
				 [:cat | reject includes: cat].
			cats isEmpty ifFalse:
				[lines add: labels size.
				labels addAll: (cats asSortedCollection:
					[:a :b | a asLowercase < b asLowercase]).
				reject addAll: cats]].

	newName := UIManager default chooseOrRequestFrom: labels lines: lines title: aPrompt.
	^ newName ifNotNil: [newName asSymbol]