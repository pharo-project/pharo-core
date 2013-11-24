buildPackageSearch
	"It is an search dialog which filters package list"
	^ SearchMorph new
		model: self;
		updateSelector: #packageSearchUpdate:;
		yourself