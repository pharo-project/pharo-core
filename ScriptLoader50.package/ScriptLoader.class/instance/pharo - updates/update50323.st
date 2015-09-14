update50323
	"self new update50323"
	self withUpdateLog: '16566 Replace WriteStream with writeStream message send in AST-Core
	https://pharo.fogbugz.com/f/cases/16566

16556 Nautilus selection announcements intersect as they are in a hierarchy
	https://pharo.fogbugz.com/f/cases/16556

16539 System-Changes and Compression should not depend on Graphics-Display Objects
	https://pharo.fogbugz.com/f/cases/16539'.
	self loadTogether: self script50323 merge: false.
	self flushCaches.
