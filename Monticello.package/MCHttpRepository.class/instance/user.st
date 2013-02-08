accessing
user
	self userAndPasswordFromSettingsDo: [:usr :pwd | ^usr].
	"not in settings"
	user isEmptyOrNil ifFalse: [ ^user ].
	
	^ Smalltalk globals at: #UsersManager 
		ifPresent: [:usersManager |
			(usersManager default currentUser userNamePasswordFor: self keyChainGroupSelector)
				ifNotNil: [ :usr | usr username ]		
				ifNil: [ '' ]]
		ifAbsent: [ '' ]