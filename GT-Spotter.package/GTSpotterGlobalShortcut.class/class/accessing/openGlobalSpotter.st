openGlobalSpotter
	globalSpotter 
		ifNotNil: [ globalSpotter delete ].
		
	globalSpotter := GTSpotterMorph new
		width: 630;
		doLayout;
		spotterModel: GTSpotter new;
		openCenteredInWorld.
		
	^ globalSpotter