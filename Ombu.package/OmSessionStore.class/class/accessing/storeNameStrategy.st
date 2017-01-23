storeNameStrategy

	^ storeNameStrategy ifNil: [ 
		storeNameStrategy := OmRandomSuffixStrategy new ]