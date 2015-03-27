update40585
	"self new update40585"
	self withUpdateLog: '15232 ByteString and WideString dont agree on isAsciiString 
	https://pharo.fogbugz.com/f/cases/15232

14319 Ctrl + shift + F in the text pane does not work on mac (but on windows)
	https://pharo.fogbugz.com/f/cases/14319'.
	self loadTogether: self script585 merge: false.
	
KMPragmaKeymapBuilder initialize.
	self flushCaches.
