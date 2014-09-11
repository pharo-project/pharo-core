update40218
	"self new update40218"
	self withUpdateLog: '13205 Temporary variable declaration in blocks
	https://pharo.fogbugz.com/f/cases/13205

13989 Temporary variables not read and writen in Gofer-Core
	https://pharo.fogbugz.com/f/cases/13989

13837 remove TextEditorDialogWindow autoaccept preference
	https://pharo.fogbugz.com/f/cases/13837

13987 remove empty package Settings-Tools
	https://pharo.fogbugz.com/f/cases/13987
'.
	self loadTogether: self script218 merge: false.
	ScriptLoader new deletePackage: 'Settings-Tools'.
	self flushCaches.
self cleanRepositories.
