buildPackageSearch
	"It is an search dialog which filters package list"

	searchWidget := SearchMorph new
		model: self;
		updateSelector: #packageSearchUpdate:;
		ghostText: 'Type: Pkg1|^Pkg2|Pk.*Core$';
		list: SharedValueHolder instance;
		useSelectionIndex: false;
		setIndexSelector: #packageSearchUpdate:;
		yourself.
	^ searchWidget