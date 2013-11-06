pharo - updates
update20626
	"self new update20626"
	self withUpdateLog: '12071 #executeMethod: not in Pharo
	https://pharo.fogbugz.com/f/cases/12071'.
	self loadTogether: self script599 merge: false.
	self flushCaches.
