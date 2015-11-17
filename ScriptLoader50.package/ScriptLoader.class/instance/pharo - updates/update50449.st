update50449
	"self new update50449"
	
Smalltalk allClassesDo: [ :class |
	class instanceVariables: nil.
	class class instanceVariables: nil.
].
	self withUpdateLog: '17027 nil out instanceVariables and remove accessor
	https://pharo.fogbugz.com/f/cases/17027

17033 Visualization of Breakpoints 
	https://pharo.fogbugz.com/f/cases/17033

17030 ExternalBrowser can not switch back to the instance side 
	https://pharo.fogbugz.com/f/cases/17030'.
	self loadTogether: self script50449 merge: false.
	self flushCaches.
