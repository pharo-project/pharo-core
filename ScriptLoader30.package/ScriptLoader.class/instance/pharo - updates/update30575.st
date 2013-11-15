update30575
	"self new update30575"
	self withUpdateLog: '12168 Menu actions of MetacelloConfigurationBrowser do not fit buttons
	https://pharo.fogbugz.com/f/cases/12168
		
12169 Inspector contextual menu raises DNU MenuModel>>#add:target:selector:
	https://pharo.fogbugz.com/f/cases/12169'.
	self loadTogether: self script231 merge: false.
	self flushCaches.
