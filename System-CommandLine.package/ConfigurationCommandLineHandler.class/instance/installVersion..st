actions
installVersion: aVersionName

	self inform: 'Installing ', self configurationName, ' ', aVersionName.
	(self project version: aVersionName) load.
	
	Smalltalk snapshot: true andQuit: true.