versionCommonBaselineSpecString
    ^ 'spec blessing: #''baseline''.
spec repository: ''dictionary://Metacello_Dev_Cycle_Repository''.
spec project: ''MetacelloTestConfigurationOfFoo'' with: [
		spec
			className: ''MetacelloTestConfigurationOfFoo'';
			versionString: #''bleedingEdge'';
			repository: ''dictionary://Metacello_Dev_Cycle_Repository'' ].
spec 
	package: ''GeauxFaux'' with: [
		spec requires: #(''MetacelloTestConfigurationOfFoo'' ). ];
	package: ''GeauxBeau'' with: [
		spec requires: #(''GeauxFaux'' ). ].
spec 
	group: ''default'' with: #(''Core'' );
	group: ''Core'' with: #(''GeauxFaux'' );
	group: ''Tests'' with: #(''GeauxBeau'' );
	group: ''Core Tests'' with: #(''Core'' ''Tests'' ).'