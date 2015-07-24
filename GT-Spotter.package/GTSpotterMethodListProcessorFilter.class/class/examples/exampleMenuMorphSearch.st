exampleMenuMorphSearch
	"A spotter for searching through the menu morphs.
	
	self exampleMenuMorphSearch
	"
	
	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter
			on: World worldMenu 
			withProcessors: {
				MenuMorph>>#spotterItemsFor:});
		openCenteredInWorld