pharo - updates
update20592
	"self new update20592"
	self withUpdateLog: '10017 ProtocolCLient do not propagate the erros from the server
	https://pharo.fogbugz.com/f/cases/10017

7627 FileReference>>deleteAll follows symlinks
	https://pharo.fogbugz.com/f/cases/7627
'.
	self loadTogether: self script566 merge: false.
	self flushCaches.
