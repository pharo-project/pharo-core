testAllStoredSettings
	"There is no preference file. It should not generate an error."
	self assert: systemSettings allStoredSettings isEmpty.
	systemSettings fileReference ensureCreateFile.
	self assert: systemSettings allStoredSettings isEmpty.
	systemSettings fileReference writeStream nextPutAll: 'random string'; close.
	self assert: systemSettings fileReference contents equals: 'random string'.
	self assert: systemSettings allStoredSettings isEmpty.
	