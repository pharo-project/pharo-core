groups
lastModifiedClasses

	^ cachedLastClasses ifNil: [ cachedLastClasses := RecentMessageList uniqueInstance lastClasses: 10 ]