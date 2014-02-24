update30779
	"self new update30779"
	self withUpdateLog: '12835 NBExternalArray ofType: bool is wrong
	https://pharo.fogbugz.com/f/cases/12835

12955 Wrong name on protocol addition in Nautilus
	https://pharo.fogbugz.com/f/cases/12955
	
	12958 Integrate Versionner 2.4
	https://pharo.fogbugz.com/f/cases/12958
	
12953 Display sub project loads directives
	https://pharo.fogbugz.com/f/cases/12953
	
12932 Versionner: Filter Test Configurations - Still does not work
	https://pharo.fogbugz.com/f/cases/12932
	
12903 Versionner rewrite of baseline renames project labels and strips off sub project load
	https://pharo.fogbugz.com/f/cases/12903

'.
	self loadTogether: self script432 merge: false.
	self flushCaches.
