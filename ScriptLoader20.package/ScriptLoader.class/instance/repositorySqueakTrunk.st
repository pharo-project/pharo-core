accessing
repositorySqueakTrunk
	^ repositorySqueakTrunk ifNil: [
		repositorySqueakTrunk := MCHttpRepository new
			location:  'http://source.squeakfoundation.org/trunk';
			user: '';
			password: '']