version12SourceString
  ^ 'version12: spec
	<version: ''1.2'' imports: #(''1.2-baseline'' )>

	spec for: #''common'' do: [
		spec blessing: #''development''.
		spec project: ''MetacelloTestConfigurationOfFoo'' with: ''4.0''.
		spec 
			package: ''GeauxFaux'' with: ''GeauxFaux-tg.32'';
			package: ''GeauxBeau'' with: ''GeauxBeau-dkh.55''.

		spec for: #''nested'' do: [
			spec description: ''nested for:do: section''.
			spec package: ''GoferFoo'' with: ''GoferFoo-lr.1''. ]. ].

	spec for: #''outer'' do: [
		spec package: ''GoferFaux'' with: ''GoferFaux-tg.32''.

		spec for: #''nested'' do: [
			spec package: ''GoferBeau'' with: ''GoferBeau-dkh.55''. ]. ].

	spec for: #''other'' do: [
		spec package: ''GoferBar'' with: ''GoferBar-lr.1''. ].
'