integration
load
	"try to load this issue using the ChangeLoader which will update the tracker status accordingly"
	
	self ensureFix.
	
	^ self changeLoader load
	
	
	
	