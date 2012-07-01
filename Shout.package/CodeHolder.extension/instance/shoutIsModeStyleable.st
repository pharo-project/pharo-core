*Shout-Styling
shoutIsModeStyleable
	^ self showingSource
		or: [self showingPrettyPrint]