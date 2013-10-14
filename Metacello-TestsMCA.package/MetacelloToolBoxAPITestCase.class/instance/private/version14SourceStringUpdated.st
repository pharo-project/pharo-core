version14SourceStringUpdated
  ^ 'version14: spec
	<version: ''1.4'' imports: #(''1.4-baseline'' )>

	spec for: #''common'' do: [
		spec blessing: #''development''.
		spec package: ''GeauxFaux'' with: ''GeauxFaux-tg.32''. ].

	spec for: #''platform'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
		spec package: ''GoferBar'' with: ''GoferBar-lr.1''. ].

	spec for: #''platform1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
		spec package: ''GeauxBeau'' with: ''GeauxBeau-dkh.55''. ].

	spec for: #''platform2.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
		spec package: ''GoferFaux'' with: ''GoferFaux-tg.32''. ].

	spec for: #''platform2.1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
		spec package: ''GoferFoo'' with: ''GoferFoo-lr.1''. ].

	spec for: #''platform3.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: #''bleedingEdge''.
		spec package: ''GoferFoo'' with: ''''. ].

	spec for: #''platform3.1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: #''bleedingEdge''.
		spec package: ''GoferFaux'' with: ''''. ].

	spec for: #''platform4.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: #''bleedingEdge''.
		spec package: ''GoferFoo'' with: ''''. ].

	spec for: #''platform4.1.x'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: #''bleedingEdge''.
		spec 
			package: ''GoferFoo'';
			package: ''GoferFaux'' with: ''''. ].
'