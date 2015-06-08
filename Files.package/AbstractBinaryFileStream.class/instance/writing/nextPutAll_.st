nextPutAll: aByteArray

	self onPositionDo: [ file writeAll: aByteArray ]