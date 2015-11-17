update50451
	"self new update50451"
	self withUpdateLog: '17010 MultistateButtonMorph to use announcement instead of #triggerEvent: 
	https://pharo.fogbugz.com/f/cases/17010

17037 Simplify suggestions for Breakpoints
	https://pharo.fogbugz.com/f/cases/17037'.
	self loadTogether: self script50451 merge: false.
	
SugsSuggestionFactory cleanUp.
	self flushCaches.
