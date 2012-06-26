accessing
repositoryMC
	^ repositoryMC ifNil: [
		repositoryMC := MCHttpRepository new
			location:  'http://source.wiresong.ca/mc';
			user: '';
			password: '']