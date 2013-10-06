update30400
	"self new update30400"
	self withUpdateLog: '11582 Add first-class shortcut categories - Step 1
	https://pharo.fogbugz.com/f/cases/11582
	'.
	self loadTogether: self script192 merge: false.
	KMRepository reset.
EditorFindReplaceDialogWindow startUp.
	self flushCaches.
