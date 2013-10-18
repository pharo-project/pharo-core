update30500
	"self new update30500"
	self withUpdateLog: '11835 Cannnot revert <Make uncloseable>
	https://pharo.fogbugz.com/f/cases/11835

11924 Resize the morph while inspecting it
	https://pharo.fogbugz.com/f/cases/11924

11915 #joinUsing:last: incorrect for single item collection
	https://pharo.fogbugz.com/f/cases/11915
'.
	self loadTogether: self script155 merge: false.
	self flushCaches.
