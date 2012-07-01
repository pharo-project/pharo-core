accessing method dictionary
allMethodCategoriesIntegratedThrough: mostGenericClass
	"Answer a list of all the method categories of the receiver and all its superclasses, up through mostGenericClass"

	| aColl |
	aColl := OrderedCollection new.
	self withAllSuperclasses do:
		[:aClass |
			(aClass includesBehavior: mostGenericClass)
				ifTrue:	[aColl addAll: aClass organization categories]].
	aColl remove: 'no messages' asSymbol ifAbsent: [].

	^ (aColl asSet asSortedCollection: [:a :b | a asLowercase < b asLowercase]) asArray

"ColorTileMorph allMethodCategoriesIntegratedThrough: TileMorph"