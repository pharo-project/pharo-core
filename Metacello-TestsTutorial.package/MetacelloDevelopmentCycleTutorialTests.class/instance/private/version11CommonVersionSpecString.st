version11CommonVersionSpecString
    ^ '
spec description: ''''.
spec author: ''TesterBob''.
spec timestamp: ''''.
spec repository: ''dictionary://Metacello_Dev_Cycle_Repository''.
spec 
	project: ''MetacelloTestConfigurationOfFoo'' with: [
		spec
			className: ''MetacelloTestConfigurationOfFoo'';
			versionString: #''bleedingEdge'';
			repository: ''dictionary://Metacello_Dev_Cycle_Repository'' ];
	project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
spec 
	package: ''GeauxFaux'' with: [
		spec requires: #(''MetacelloTestConfigurationOfFoo'' ). ];
	package: ''GeauxBeau'' with: [
		spec requires: #(''GeauxFaux'' ). ];
	package: ''GeauxFaux'' with: ''GeauxFaux-tg.32'';
	package: ''GeauxBeau'' with: ''GeauxBeau-dkh.55''.
spec 
	group: ''default'' with: #(''Core'' );
	group: ''Core'' with: #(''GeauxFaux'' );
	group: ''Tests'' with: #(''GeauxBeau'' );
	group: ''Core Tests'' with: #(''Core'' ''Tests'' ).'