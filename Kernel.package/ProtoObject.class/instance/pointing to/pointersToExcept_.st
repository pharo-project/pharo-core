pointersToExcept: objectsToExclude
	"Find all objects in the system that hold a pointer to me, excluding those listed"
	| pointers object objectsToAlwaysExclude |
	Smalltalk garbageCollect.
	pointers := OrderedCollection new.
	"SystemNavigation >> #allObjectsDo: is inlined here with a slight modification: the marker object is pointers. This gives better results, because the value of pointers, it's inner objects and transient method contexts will not be iterated over."
	object := self someObject.
	[ object == pointers ] whileFalse: [
		( object pointsTo: self ) ifTrue: [
			pointers add: object ].
		object := object nextObject ].
	objectsToAlwaysExclude := {
		thisContext.
		thisContext sender.
		thisContext sender sender.
		objectsToExclude.
	}.
	c := thisContext.
	^(pointers removeAllSuchThat: [ :ea |
		(ea == thisContext sender) or: [ "warning: this expression is dependent on closure structure of this method"
			(objectsToAlwaysExclude identityIncludes: ea)
				or: [objectsToExclude identityIncludes: ea ]] ]) asArray