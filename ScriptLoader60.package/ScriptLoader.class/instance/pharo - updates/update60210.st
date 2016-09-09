update60210
	"self new update60210"
	self withUpdateLog: '19067 Wrong emphasis code for struck and narrow
	https://pharo.fogbugz.com/f/cases/19067

19061 Move some of rules to new architecture & improve 
	https://pharo.fogbugz.com/f/cases/19061

19066 subclassDefinerClass needs to return Smalltalk compilerClass
	https://pharo.fogbugz.com/f/cases/19066'.
	self loadTogether: self script60210 merge: false.
	self flushCaches.
