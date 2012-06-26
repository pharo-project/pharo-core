geometry
numberOfItemsPotentiallyInViewWith: listSize 
	"This is a refactoring for numberOfItemsPotentiallyInView because in some cases the numberOfSubmorhps
	needs to be passed from the outside. "
	^ self innerBounds height // (self localSubmorphBounds height / listSize)