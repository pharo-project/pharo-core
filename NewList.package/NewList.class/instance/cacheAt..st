protocol
cacheAt: index

	^ listCache contents at: index ifAbsent: [ ^ nil ]