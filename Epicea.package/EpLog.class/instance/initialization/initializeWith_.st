initializeWith: aStore 
	self initialize.
	store := aStore.
	announcer := Announcer new.
	headReference := aStore headReference.
	commentByEntryReference := Dictionary new.
	commitByEntryReference := Dictionary new.

	"Initialize caches"
	aStore entriesDo: [ :each | self cacheEntry: each ]