repositorySqueakTrunk
	^ repositorySqueakTrunk ifNil: [
		repositorySqueakTrunk := MCHttpRepository location: 'http://source.squeakfoundation.org/trunk']