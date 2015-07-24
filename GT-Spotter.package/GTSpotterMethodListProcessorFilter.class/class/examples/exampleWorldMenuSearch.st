exampleWorldMenuSearch
	"A spotter for searching through the world menu.
	
	self exampleWorldMenuSearch
	"
	
	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter
			withProcessors: {
				GTSpotter>>#spotterWorldMenuFor:});
		openCenteredInWorld