next: amount putAll: aByteArray

	self onPositionDo: [ 
		file writeAmount: amount from: aByteArray startingAt: 1 ]