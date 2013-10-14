version15SourceStringA
    ^ 'version15: spec
	<version: ''1.5'' imports: #(''1.5-baseline'' )>

	spec for: #''common'' do: [
		spec blessing: #''development''.
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
		spec 
			package: ''GeauxFaux'' with: ''GeauxFaux-tg.32'';
			package: ''GeauxBeau'' with: ''GeauxBeau-dkh.55''. ].

	spec for: #(#''outer'' #''nested'' ) do: [
		spec package: ''GoferFaux'' with: ''GoferFaux-tg.32''. ].
'