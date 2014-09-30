isScrollMustBeChecked: anIndex withLeft: leftBound andRight: rightBound

	^ (leftBound <= (self buttonCenterByIndex: anIndex isLeft: true) ) & (rightBound > (self buttonCenterByIndex: anIndex isLeft: false))