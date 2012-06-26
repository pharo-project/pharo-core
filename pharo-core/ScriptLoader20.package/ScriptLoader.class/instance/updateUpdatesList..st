elementary steps
updateUpdatesList: aString
	"ScriptLoader new updateUpdatesList: 'cleanUpMethods'"
	
	self updatesListFileName asFile writeStreamDo: [ :str|
		str
			setToEnd;
			cr;
			nextPutAll: self currentUpdateVersionNumber asString;
			nextPutAll: '-Pha-', aString, '.cs' ]