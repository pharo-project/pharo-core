update30415
	"self new update30415"
	self withUpdateLog: '11652 Undeclared variable in PluggableTextMorphWithLimits >> #acceptBasic
	https://pharo.fogbugz.com/f/cases/11652
	
11651 Filing testInstanceSideMethodsWithNilKeyInLastLiteral
	https://pharo.fogbugz.com/f/cases/11651
	
11629 Obsolete Class in the release: AnObsoleteKMCommandModifier
	https://pharo.fogbugz.com/f/cases/11629
	
11647 DropListModel >> #setSelectedItem: mixes up model, items and labels
	https://pharo.fogbugz.com/f/cases/11647'.
	self loadTogether: self script207 merge: false.
	MorphicUIManager compileAll.
KMBuffer resetUniqueInstance.
KMRepository reset.
.
	self flushCaches.
