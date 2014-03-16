childrenForObject: anObject
	^ anObject inspector elements 
			select: [ :element | element shouldShowInTree ]