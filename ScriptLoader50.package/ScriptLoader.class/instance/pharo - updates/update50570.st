update50570
	"self new update50570"
	
StringMorph allSubInstancesDo: [ :morph | morph backgroundColor ].
	self withUpdateLog: '16814 Critics Browser seriously broken
	https://pharo.fogbugz.com/f/cases/16814

17545 StringMorph background part2
	https://pharo.fogbugz.com/f/cases/17545'.
	self loadTogether: self script50570 merge: false.
	self flushCaches.
