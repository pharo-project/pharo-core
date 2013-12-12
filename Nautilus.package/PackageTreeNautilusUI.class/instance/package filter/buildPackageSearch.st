buildPackageSearch
	"It is an search dialog which filters package list"
	^ SearchMorph new
		model: self;
		updateSelector: #packageSearchUpdate:;
		ghostText: 'Type: Pkg1|^Pkg2|Pk.*Core$'
		yourself