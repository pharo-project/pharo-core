equalElementsBetween: aCollection and: otherCollection
	^((aCollection size = otherCollection size) 
		and:  [ aCollection includesAll: otherCollection ])
		and: [ otherCollection includesAll: aCollection ]