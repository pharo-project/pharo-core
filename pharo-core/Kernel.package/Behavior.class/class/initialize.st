class initialization
initialize
	"Behavior initialize"
	"Never called for real"
	ObsoleteSubclasses
		ifNil: [self initializeObsoleteSubclasses]
		ifNotNil: [| newDict | 
			newDict := WeakKeyToCollectionDictionary newFrom: ObsoleteSubclasses.
			newDict rehash.
			ObsoleteSubclasses := newDict]