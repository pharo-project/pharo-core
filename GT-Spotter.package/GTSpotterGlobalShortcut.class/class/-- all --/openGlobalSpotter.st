openGlobalSpotter
	| spotterModel |
		
	self reset.
	spotterModel := GTSpotter new.
	(Smalltalk hasClassNamed: #GTSpotterEventRecorder) ifTrue: [ 
		#GTSpotterEventRecorder asClass instance 
			perform: #linkToSpotter: with: spotterModel;
			perform: #recordSpotterOpenEvent ] .
	
	GTSpotterMorph new
		extent: (World width / 2.4 @ (World height / 1.6)) asIntegerPoint;
		spotterModel: spotterModel;
		doLayout;
		openCenteredInWorld.
		
	spotterModel class markOpened.