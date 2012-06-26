accessing
user
	self userAndPasswordFromSettingsDo: [:usr :pwd | ^usr].
	"not in settings"
	^user ifNil: ['']