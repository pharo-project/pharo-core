update60252
	"self new update60252"
	self withUpdateLog: '19173 *** Warning: Deprecation: The method GTSpotter>>#isEmpty called from GTSpotterTest>>#assertText:do: has been deprecated.
	https://pharo.fogbugz.com/f/cases/19173

19170 The method Pragma>>#selector called from Parser class>>#primitivePragmaSelectors has been deprecated.
	https://pharo.fogbugz.com/f/cases/19170

19149 spelling FFICalloutAPITests>>ffiTestContantFormat: format to: 
	https://pharo.fogbugz.com/f/cases/19149

19174 UI process should be restarted to support multi windows
	https://pharo.fogbugz.com/f/cases/19174'.
	self loadTogether: self script60252 merge: false.
	self loadConfiguration: 'GTSpotter' version: '2.19'.
[ UIManager default terminateUIProcess; spawnNewProcess. ] fork.
	self flushCaches.
