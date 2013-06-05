pharo - updates
update20605
	"self new update20605"
	self withUpdateLog: '10653	Some Jenkins images show a stdout is closed error
	https://pharo.fogbugz.com/f/cases/10653'.
	self loadTogether: self script578 merge: false.
	self flushCaches.
