swapClassComment: classOrTrait
	remoteStringMap 
		at: classOrTrait
		ifPresent: [ :remoteString | 
			classOrTrait organization comment: remoteString ]