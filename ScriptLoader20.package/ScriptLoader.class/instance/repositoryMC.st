accessing
repositoryMC
	^ repositoryMC ifNil: [
		repositoryMC := MCHttpRepository location: 'http://source.wiresong.ca/mc']