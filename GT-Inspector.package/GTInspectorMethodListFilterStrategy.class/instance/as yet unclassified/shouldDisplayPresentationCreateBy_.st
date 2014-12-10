shouldDisplayPresentationCreateBy: aMethod

	^ methodSignatures anySatisfy: [ :aSignature | 
		aSignature key = aMethod selector and: [ aSignature value = aMethod methodClass ] ]