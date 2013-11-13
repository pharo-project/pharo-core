update30568
	"self new update30568"
	self withUpdateLog: '12153 Issue with the old TreeModel API
	https://pharo.fogbugz.com/f/cases/12153
	
12151 Ring definitions should respond to #asRingDefinition
	https://pharo.fogbugz.com/f/cases/12151
	
12152 RGClassDescriptionDefinition should not override #instVarNamed:
	https://pharo.fogbugz.com/f/cases/12152'.
	self loadTogether: self script224 merge: false.
	self flushCaches.
