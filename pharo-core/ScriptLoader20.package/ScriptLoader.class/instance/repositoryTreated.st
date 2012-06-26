accessing
repositoryTreated
	^ repositoryTreated ifNil: [
		repositoryTreated := MCHttpRepository new
			location:  'http://www.squeaksource.com/PharoTreatedInbox';
			user: '';
			password: '']