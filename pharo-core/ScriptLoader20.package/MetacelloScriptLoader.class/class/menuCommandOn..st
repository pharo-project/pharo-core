menu
menuCommandOn: aBuilder 
	"<worldMenu>"
	
	(aBuilder item: #'Integrator Menu')
		order: 1.5;
		precondition: [ self currentlyIntegratingChanges ];
		parent: #System;
		icon: self theme smallAuthoringToolsIcon;
		action: [ self releaseMenu ]