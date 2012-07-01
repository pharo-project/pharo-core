as yet unclassified
inboxRepositoryDefault
	^ MCHttpRepository new 
	 	location: self inboxRepositoryUrlString;
		user: '';
		password: ''