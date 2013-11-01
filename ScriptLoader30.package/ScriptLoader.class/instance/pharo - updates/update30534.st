update30534
	"self new update30534"
	self withUpdateLog: '12044 Move more more deprecated methods to Deprecated30
	https://pharo.fogbugz.com/f/cases/12044
	
12045 Some underscores zealously replaced by assignment in FreeType
	https://pharo.fogbugz.com/f/cases/12045
	
12047 Config browser Refresh does only refresh the list - but not refresh from repository
	https://pharo.fogbugz.com/f/cases/12047
	
12036 pointsTo: should not filter compact classes
	https://pharo.fogbugz.com/f/cases/12036
'.
	self loadTogether: self script189 merge: false.
	self flushCaches.
