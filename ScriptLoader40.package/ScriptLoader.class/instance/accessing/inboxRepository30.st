inboxRepository30
	^ MCHttpRepository new 
	 	location:  self rootURLString, 'Pharo30Inbox/main';
		user: '';
		password: ''