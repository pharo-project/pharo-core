menu integration actions
prepareNewUpdate
	self launchUpdate.
	self loadLatestScriptloader.
	self markPackagesBeforeNewCodeIsLoaded.
	self checkImageIsUptodate ifFalse: [self loadLatestUpdateList].
	self checkImageIsUptodate ifFalse: [
		^ self inform: 'Your update.list and your image are not in sync! Please use a fresh image and download the latest update.list and start over. May be you are doing a rollback and you should remove the bogus ScriptLoader version from the Pharo repository' ].
	self setUpdateAndScriptVersionNumbers.
	self saveAsNewImageWithCurrentReleaseName.
	self inform: 'The new version number is ' , self currentUpdateVersionNumber asString , '. Ready to apply changes now.', String cr, 'You are now running in image ', (Smalltalk imageFile basename).