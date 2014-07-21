update40107
	"self new update40107"
	self withUpdateLog: '13604 MorphicModel: ivar accessor only used by Slide and not needed even there
	https://pharo.fogbugz.com/f/cases/13604

13617 Fixing some tools package extension
	https://pharo.fogbugz.com/f/cases/13617

13613 move tests from Multilingual-OtherLanguages to Multilingual-Tests package
	https://pharo.fogbugz.com/f/cases/13613

13614 move RBProgramNode>>#method to accessing category
	https://pharo.fogbugz.com/f/cases/13614

13616 Lost browseChangesFile: was lost
	https://pharo.fogbugz.com/f/cases/13616

13608 remove ThumbnailMorph
	https://pharo.fogbugz.com/f/cases/13608

'.
	self loadTogether: self script107 merge: false.
	self flushCaches.
self cleanRepositories.
