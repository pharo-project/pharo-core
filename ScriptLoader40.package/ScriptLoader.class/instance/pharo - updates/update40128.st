update40128
	"self new update40128"
	self withUpdateLog: '13701 Duplicated methods in menuMorph
	https://pharo.fogbugz.com/f/cases/13701

13700 AlignmentMorph cleaning
	https://pharo.fogbugz.com/f/cases/13700

13683 Morph>>changeColor should be an extension of ColorPicker
	https://pharo.fogbugz.com/f/cases/13683
	
13687	HSVAColorSelectorMorph should be moved to ColorPicker
	https://pharo.fogbugz.com/f/cases/13687

'.
	self loadTogether: self script128 merge: false.
	self flushCaches.
self cleanRepositories.
