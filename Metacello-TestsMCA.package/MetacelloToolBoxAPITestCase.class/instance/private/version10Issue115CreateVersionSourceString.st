version10Issue115CreateVersionSourceString
  ^ 'version10: spec
	<version: ''1.0'' imports: #(''1.0-baseline'' )>

	spec for: #''common'' do: [
		spec blessing: #''development''.
		spec 
			package: ''GoferFoo'' with: ''GoferFoo-lr.1'';
			package: ''GoferBar'' with: ''GoferBar-lr.1''. ].

	spec for: #''nested'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''. ].
'