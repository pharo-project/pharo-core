createInstanceOf: aClass size: indexableSize

	^ self instantiateClass: [ gen emitFetchClass: aClass ] indexableSize: indexableSize