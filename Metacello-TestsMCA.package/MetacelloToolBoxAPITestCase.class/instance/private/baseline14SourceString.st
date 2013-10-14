baseline14SourceString
    ^ 'baseline14: spec
	<version: ''1.4-baseline''>

	spec for: #''common'' do: [
		spec blessing: #''baseline''.
		spec repository: ''dictionary://Metacello_Dev_Cycle_Repository''.
		spec 
			package: ''GeauxFaux'';
			package: ''GeauxBeau'' with: [
				spec requires: #(''GeauxFaux'' ). ].
		spec 
			group: ''default'' with: #(''Core'' );
			group: ''Core'' with: #(''GeauxFaux'' ). ].

	spec for: #''platform'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec package: ''GoferBar''. ].

	spec for: #''platform1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec package: ''GeauxBeau''. ].

	spec for: #''platform2.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec package: ''GoferFaux''. ].

	spec for: #''platform2.1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec 
			package: ''GoferFoo'';
			package: ''GoferFaux'' with: [
				spec requires: #(''GoferFoo'' ). ]. ].

	spec for: #''platform3.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec package: ''GoferFoo''. ].

	spec for: #''platform3.1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec 
			package: ''GoferFoo'' with: [
				spec requires: #(''GoferFaux'' ). ];
			package: ''GoferFaux''. ].

	spec for: #''platform4.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec package: ''GoferFoo''. ].

	spec for: #''platform4.1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: [
				spec
					className: ''MetacelloTestConfigurationOfFoo'';
					versionString: #''bleedingEdge'';
					repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].
		spec 
			package: ''GoferFoo'' with: [
				spec requires: #(''GoferFaux'' ). ];
			package: ''GoferFaux''. ].
'