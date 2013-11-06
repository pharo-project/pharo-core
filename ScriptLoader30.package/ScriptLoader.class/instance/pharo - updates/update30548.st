update30548
	"self new update30548"
	self withUpdateLog: '12074 Do not check if SourceFiles is nil
	https://pharo.fogbugz.com/f/cases/12074
	
12071 #executeMethod: not in Pharo
	https://pharo.fogbugz.com/f/cases/12071
	
2895 SocketStream not robuts against integer
	https://pharo.fogbugz.com/f/cases/2895
'.
	self loadTogether: self script203 merge: false.
	self flushCaches.
