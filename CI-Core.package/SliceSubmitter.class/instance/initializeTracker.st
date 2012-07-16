initialize
initializeTracker
	| userPassword tries |

	tries := 3.
	[ userPassword isNil and: [ tries > 0] ] whileTrue: [ 
		tries := tries -1.
		userPassword := self retrieveUserPassword ].
	[ self class authenticate: userPassword key with: userPassword value ] on: Error do: [ tracker := nil ].