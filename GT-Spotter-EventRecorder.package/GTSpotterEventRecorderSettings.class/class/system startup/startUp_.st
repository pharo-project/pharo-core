startUp: resuming
	"We reset image preferences, because this is likely 
	a newly downloaded image or different user
	and he/she should agree about sending data."
	self preferences exists ifFalse: [ self reset ].
	self loadPreferences.