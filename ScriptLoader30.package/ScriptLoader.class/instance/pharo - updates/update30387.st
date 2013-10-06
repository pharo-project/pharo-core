update30387
	"self new update30387"
	self withUpdateLog: '11566 MorphFrameGhost should be renamed and subclassed from BorderedMorph
	https://pharo.fogbugz.com/f/cases/11566
	
11564 ThumbnailImageMorph should be removed
	https://pharo.fogbugz.com/f/cases/11564
'.
	self loadTogether: self script179 merge: false.
	self flushCaches.
