update30554
	"self new update30554"
	self withUpdateLog: '- Issue 12096:
	Bad use of polimorphic on openMessageList:name:autoSelect: method of MessageBrowser class.
	https://pharo.fogbugz.com/f/cases/12096
	
- Issue 12064: 
	Selecting a package in the Monticello browser
	https://pharo.fogbugz.com/f/cases/12064
	
- Issue 12098: Node Navigation not working in message browser and debugger
	https://pharo.fogbugz.com/f/cases/12098
	
- Issue 12086: Put a fly by help in the browser lists
	https://pharo.fogbugz.com/f/cases/12086'.
	self loadTogether: self script210 merge: false.
	self flushCaches.
