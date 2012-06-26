accessing
userName
	"Answer the user name to be used in composing messages."

	(UserName isNil or: [UserName isEmpty])
		ifTrue: [self setUserName].

	UserName isEmpty ifTrue: [ self error: 'no user name specified' ].

	^UserName