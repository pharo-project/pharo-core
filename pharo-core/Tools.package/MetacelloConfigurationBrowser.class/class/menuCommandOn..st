registration
menuCommandOn: aBuilder  
	<worldMenu>
	(aBuilder item: 'Configuration Browser')
		parent: #Tools;
		order: 0.5;
		action: [self open]; 
		icon:  self theme smallLoadProjectIcon