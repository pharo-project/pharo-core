remote
	
	^ MCRepositoryGroup default repositories detect: [ :e | e description = 'http://smalltalkhub.com/mc/Pharo/Pharo30Inbox/main' ].