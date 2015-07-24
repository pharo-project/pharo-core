exampleHelpSearch
	"A spotter for searching through help pages.
	
	self exampleHelpSearch
	"
	
	GTSpotterMorph new
		extent: 400@500;
		spotterModel: (GTSpotter
			withProcessors: {
				GTSpotter>>#spotterForHelpTopicFor:.
				HelpTopic>>#spotterForHelpTopicFor:});
		openCenteredInWorld