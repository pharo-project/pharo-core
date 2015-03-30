queryForItem: each
	" hack: see senders of #queryForFileReference "
	^ self context cacheAt: #queryForFileReference ifAbsent: [ query ] " performance optimization "