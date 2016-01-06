version093: spec
	<version: '0.9.3' imports: #('0.9-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'added ffiArgumentNames (for future #prepareForProduction) on FFI'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '1/6/2016 17:25'.
		spec 
			project: 'FFI' with: '1.10.1';
			project: 'Alien' with: '1.2'.
		spec 
			package: 'FFI-NB' with: 'FFI-NB-EstebanLorenzano.50';
			package: 'FFI-NB-Tests' with: 'FFI-NB-Tests-EstebanLorenzano.23';
			package: 'FFI-NB-Legacy' with: 'FFI-NB-Legacy-EstebanLorenzano.4'. ].
