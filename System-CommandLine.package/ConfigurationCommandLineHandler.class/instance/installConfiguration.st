actions
installConfiguration
	self installVersion: ((self optionAt: 'install') ifNil: [ #stable ])