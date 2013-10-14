version10SourceString

	^'version10: spec
	<version: ''1.0'' imports: #(''1.0-baseline'' )>

	spec for: #''common'' do: [
		spec blessing: #''development''.
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
		spec 
			package: ''GeauxFaux'' with: ''GeauxFaux-tg.32'';
			package: ''GeauxBeau'' with: ''GeauxBeau-dkh.55''. ].
'