update60268
	"self new update60268"
	self withUpdateLog: '19238 RBRenameTemporaryRefactoring do not set oldName if one of the optional precondition is not valid
	https://pharo.fogbugz.com/f/cases/19238'.
	self loadTogether: self script60268 merge: false.
	self flushCaches.
