user: nameString hasPassword: passwordString
	self deprecated: 'use user:password:' on: '4/11/2013' in: 'Pharo 3.0'.
	^ self new
			username: nameString;
			password: passwordString;
			yourself.