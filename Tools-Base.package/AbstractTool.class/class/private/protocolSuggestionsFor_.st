protocolSuggestionsFor: aClass

	| allExistingProtocols interestingProtocols reject |
	reject := Set new.
	reject
		addAll: aClass organization categories;
		add: Protocol nullCategory;
		add: Protocol unclassified.
	allExistingProtocols := Smalltalk allClassesAndTraits inject: Set new into: [ :col :e | 
		col
			addAll: e protocols;
			yourself ].
	interestingProtocols := allExistingProtocols reject: [ :e | reject includes: e ].
	^ interestingProtocols asOrderedCollection sort: [ :a :b | a asLowercase < b asLowercase ].