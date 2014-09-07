update40211
	"self new update40211"
	self withUpdateLog: '13974 creating menus for ListModels is broken
	https://pharo.fogbugz.com/default.asp?13974'.
	self loadTogether: self script211 merge: false.
	self flushCaches.
self cleanRepositories.
