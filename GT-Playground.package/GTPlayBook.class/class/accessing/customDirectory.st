customDirectory
	" the settings-browser will hang if this method returns nil or an object not being aFileReference " 
	
	^ customDirectory ifNil: [ self defaultCustomDirectory ]