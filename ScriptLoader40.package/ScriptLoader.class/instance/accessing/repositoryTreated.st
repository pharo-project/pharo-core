repositoryTreated
	^ repositoryTreated ifNil: [
		repositoryTreated := MCHttpRepository location:  'http://www.squeaksource.com/PharoTreatedInbox']