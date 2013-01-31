actions
installVersion: aVersionName
	self inform: 'Installing ', self configurationName, ' ', aVersionName.
	
	(self metacelloVersion: aVersionName) load.
	
	Smalltalk snapshot: true andQuit: true.