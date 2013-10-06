addDefaultUser
	| user |
	
	user := PharoUser new 
		username: 'root';
		yourself.
	user isRoot: true.
	
	self addUser: user.
	^ user