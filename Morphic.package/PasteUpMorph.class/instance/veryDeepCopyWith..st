copying
veryDeepCopyWith: deepCopier
	"See storeDataOn:"

	^ self isWorldMorph
		ifTrue: [self]	"never copy the World"
		ifFalse: [super veryDeepCopyWith: deepCopier]