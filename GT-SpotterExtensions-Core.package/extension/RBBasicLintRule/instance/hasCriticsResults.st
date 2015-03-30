hasCriticsResults
	^ self class isVisible 
		and: [ self isTransformationRule not
			and: [ self problemCount > 0 ] ]