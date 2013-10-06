isClean
	^ self children allSatisfy: [ :child | child isClean ]