update30502
	"self new update30502"
	self withUpdateLog: '11947 Added stackTop and Removed class in the debugger stack inspector.
	https://pharo.fogbugz.com/f/cases/11947
	
11519 Merge Color and Translucent Color. Thanks Luc Fabresse for the last part!
	https://pharo.fogbugz.com/f/cases/11519'.
	self loadTogether: self script157 merge: false.
	TranslucentColorRemoval switchToNewColor.
	self flushCaches.
