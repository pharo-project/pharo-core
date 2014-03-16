update30798
	"self new update30798"
	self withUpdateLog: '13006 Browsers do not synchronize class definitions
	https://pharo.fogbugz.com/f/cases/13006

13076 Optimize the information displayed by EyeInspector and EyeTreeInspector
	https://pharo.fogbugz.com/f/cases/13076

13086 EyeTreeInspector text pane doItReceiver does not match list selection
	https://pharo.fogbugz.com/f/cases/13086

13072 Debugger fail when editing a block that is no longer on the stack
	https://pharo.fogbugz.com/f/cases/13072

13077 Fix Komitter tree not displaying children
	https://pharo.fogbugz.com/f/cases/13077

'.
	self loadTogether: self script451 merge: false.
	self flushCaches.
