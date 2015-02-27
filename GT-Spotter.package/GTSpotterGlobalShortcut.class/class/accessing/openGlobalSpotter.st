openGlobalSpotter
	|spotterModel|
	globalSpotter 
		ifNotNil: [ globalSpotter spotterModel exit ].
		
	spotterModel := GTSpotter new.
	(Smalltalk hasClassNamed: #GTSpotterEventRecorder) ifTrue: [ 
		#GTSpotterEventRecorder asClass instance 
			perform: #linkToSpotter: with: spotterModel;
			perform: #recordSpotterOpenEvent ] .
		
	globalSpotter := GTSpotterMorph new
		extent: (World width / 2.4 @ (World height / 1.6)) asIntegerPoint;
		spotterModel: spotterModel;
		doLayout;
		openCenteredInWorld.
		
	^ globalSpotter