update30809
	"self new update30809"
	self withUpdateLog: '13143 Integrate Versionner 2.7
	https://pharo.fogbugz.com/f/cases/13143
	
	
Which include these:

13056 Versioneer: MNU - receiver of treeNodeClass is nil
	https://pharo.fogbugz.com/f/cases/13056
	
13148 check if the version does not exist before creating a new development version
	https://pharo.fogbugz.com/f/cases/13148
	
13140 No tree in Versionner panes
	https://pharo.fogbugz.com/f/cases/13140

13144 wrong name for generated development version
	https://pharo.fogbugz.com/f/cases/13144
	
13141 List of package dependencies contains absurd values
	https://pharo.fogbugz.com/f/cases/13141'.
	self loadTogether: self script462 merge: false.
	self flushCaches.
