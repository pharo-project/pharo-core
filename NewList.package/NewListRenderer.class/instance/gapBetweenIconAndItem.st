drawing - private
gapBetweenIconAndItem

	^ self listSource iconMaxSize 
		ifNil: [ 0 ]
		ifNotNil: [ 4 ]