baseline12SourceString
    ^ 'baseline12: spec
	<version: ''1.2-baseline''>

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
				spec requires: #(''MetacelloTestConfigurationOfFoo'' ). ];
			package: ''GeauxBeau'' with: [
				spec requires: #(''GeauxFaux'' ). ].
		spec 
			group: ''default'' with: #(''Core'' );
			group: ''Core'' with: #(''GeauxFaux'' );
			group: ''Tests'' with: #(''GeauxBeau'' );
			group: ''Core Tests'' with: #(''Core'' ''Tests'' ).

		spec for: #''nested'' do: [
			spec package: ''GoferFoo''.
			spec group: ''UI'' with: #(''GoferFoo'' ). ]. ].

	spec for: #''outer'' do: [
		spec package: ''GoferFaux'' with: [
				spec requires: #(''GoferFoo'' ). ].

		spec for: #''nested'' do: [
			spec package: ''GoferBeau''. ]. ].

	spec for: #''other'' do: [
		spec 
			package: ''GoferBeau'' with: [
				spec requires: #(''MetacelloTestConfigurationOfFoo'' ). ];
			package: ''GoferBar'' with: [
				spec requires: #(''GeauxFaux'' ). ]. ].
'