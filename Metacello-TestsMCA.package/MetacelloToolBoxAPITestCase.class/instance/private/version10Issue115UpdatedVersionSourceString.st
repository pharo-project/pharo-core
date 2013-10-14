version10Issue115UpdatedVersionSourceString
    ^ 'version10: spec
	<version: ''1.0'' imports: #(''1.0-baseline'' )>

	spec for: #''common'' do: [
		spec blessing: #''development''.
		spec 
			package: ''GoferFoo'' with: ''GoferFoo-lr.2'';
			package: ''GoferBar'' with: ''GoferBar-lr.1''. ].

	spec for: #''nested'' do: [
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''5.0''. ].
'