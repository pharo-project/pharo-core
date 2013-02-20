as yet unclassified
callback
	^ self cbClass on: [ :anInt | self enumClass at: (self enumClass itemAt: anInt) ]