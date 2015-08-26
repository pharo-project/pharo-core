update50274
	"self new update50274"
	self withUpdateLog: '15820 Better File API
	https://pharo.fogbugz.com/f/cases/15820

16256 Evaluating a class which is not implemented does not show the "Unknown variable" dialog
	https://pharo.fogbugz.com/f/cases/16256

16393 Mouse Button on Mac to get the menu is now wrong!!
	https://pharo.fogbugz.com/f/cases/16393'.
	self loadTogether: self script50274 merge: false.
	self loadConfiguration: 'Rubric' version: '1.18.4'.self flushCaches.
