printing
storeArrayValuesOn: aStream

	(self red roundTo: 0.001) storeOn: aStream.
	aStream space.
	(self green roundTo: 0.001) storeOn: aStream.
	aStream space.
	(self blue roundTo: 0.001) storeOn: aStream.

