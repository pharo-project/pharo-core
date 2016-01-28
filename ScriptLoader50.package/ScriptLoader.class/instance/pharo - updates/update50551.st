update50551
	"self new update50551"
	self withUpdateLog: '17468 HelpBrowser should offer an API for selecting topics
	https://pharo.fogbugz.com/f/cases/17468

17465 Change TopWindow before passivating the old
	https://pharo.fogbugz.com/f/cases/17465

17480 Add Timestamp in a filename
	https://pharo.fogbugz.com/f/cases/17480

17483 unload FFI platform packages
	https://pharo.fogbugz.com/f/cases/17483'.
	self loadTogether: self script50551 merge: false.
	
#('FFI-MacOS' 'FFI-Unix' 'FFI-Win32') do: [ :each |
	ScriptLoader new unloadPackageNamed: each ].
	self flushCaches.
