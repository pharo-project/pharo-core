openGlobalSpotter
	globalSpotter 
		ifNotNil: [ globalSpotter delete ].
		
	globalSpotter := GTSpotterMorph new
		extent: (World width / 2.4 @ (World height / 1.6)) asIntegerPoint;
		spotterModel: GTSpotter new;
		openCenteredInWorld.
		
	^ globalSpotter