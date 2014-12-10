exampleMC
	"self exampleMC"
	
	^ GTSpotterMorph new
		width: 400;
		doLayout;
		spotterModel: (self on: MCWorkingCopy allManagers);
		openCenteredInWorld