query
hierarchyOfImplementorsOf: aSelector forClass: aClass
	"Answer a list of classes in the hierarchy both above and below the given class which implement the given selector."
	"SystemNavigation default hierarchyOfImplementorsOf: #contents forClass: StringHolder"

	^ (self hierarchyOfClassesSurrounding: aClass) select:
		[:cl | cl includesSelector: aSelector]
