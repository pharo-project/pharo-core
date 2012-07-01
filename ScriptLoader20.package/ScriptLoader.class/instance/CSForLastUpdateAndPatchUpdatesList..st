elementary steps
CSForLastUpdateAndPatchUpdatesList: aString
	"ScriptLoader new CSForLastUpdateAndPatchUpdatesList: 'cleanUpMethods'"
	| filename |
	filename := self CSForLastUpdate: aString.
	self updateUpdatesList: aString.
	^ filename 