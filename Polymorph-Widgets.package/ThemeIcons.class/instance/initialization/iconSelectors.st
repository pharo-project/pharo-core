iconSelectors
	^ self class allSelectors 
		select: [ :each | '*Icon' match: each asString ].