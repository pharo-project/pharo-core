accessing
user
	self userAndPasswordFromSettingsDo: [:usr :pwd | ^usr].
	"not in settings"
	user isEmptyOrNil ifFalse: [ ^user ].
		
	^(UsersManager default currentUser userNamePasswordFor: self keyChainGroupSelector)
		ifNotNil: [ :usr | usr username ]		
		ifNil: [ '' ]
