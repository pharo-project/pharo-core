newScrollPane
	"using hacked ScrollPane to remove focus border"
	| sp |
	sp := GTSpotterSearchFieldScrollPane new.
	sp scrollTarget: self defaultScrollTarget.
	^ sp