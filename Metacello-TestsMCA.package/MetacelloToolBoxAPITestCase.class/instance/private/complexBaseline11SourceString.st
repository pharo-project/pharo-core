complexBaseline11SourceString
    ^ 'baseline11: spec
	<version: ''1.1-baseline''>

	spec for: #''common'' do: [
		spec blessing: #''baseline''.
		spec repository: ''dictionary://Metacello_Dev_Cycle_Repository''.
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Dev_Cycle_Repository'' ].
		spec 
			package: ''GeauxFaux'' with: [
				spec 
					requires: #(''MetacelloTestConfigurationOfFoo'' );
					includes: #(''GoferFaux'' ). ];
			package: ''GeauxBeau'' with: [
				spec requires: #(''GeauxFaux'' ). ];
			package: ''GoferBar'' with: [
				spec 
					repositories: [
						spec
							repository: ''http://example.com/repo1'';
							repository: ''http://example.com/repo2'' ];
					preLoadDoIt: #''preloadGoferBar''. ];
			package: ''GoferBeau'' with: [
				spec 
					supplyingAnswers: #( #( ''list of packages'' ''Kernel* Collection*'' ) );
					file: ''GoferBeau.pharo'';
					postLoadDoIt: #''postloadGoferBar''. ];
			package: ''GoferFaux'' with: [
				spec repository: ''http://example.com/repo2''. ].
		spec 
			group: ''default'' with: #(''Core'' );
			group: ''Core'' with: #(''GeauxFaux'' );
			group: ''Tests'' with: #(''GeauxBeau'' );
			group: ''Core Tests'' with: #(''Core'' ''Tests'' ). ].
'