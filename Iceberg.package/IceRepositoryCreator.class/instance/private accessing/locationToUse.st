locationToUse
	^ self location ifNil: [ self defaultLocation ]