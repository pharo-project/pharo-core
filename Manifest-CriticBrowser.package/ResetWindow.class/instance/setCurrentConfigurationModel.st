initialization
setCurrentConfigurationModel
	currentConfigurationModel  
		state: false;
		label: 'Uses Current Configuration';
		action: [CriticBrowser openOnWorkspace: CriticWorkingConfiguration current. self delete]