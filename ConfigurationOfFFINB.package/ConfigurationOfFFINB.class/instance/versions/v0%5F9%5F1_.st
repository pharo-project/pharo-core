v0_9_1: spec
	<version: '0.9.1' imports: #('0.9-baseline')>
	
	spec for: #'common' do: [ 
		spec 
			blessing: #'release';
			description: 'add options to FFICallbackAPI';
			author: 'EstebanLorenzano';
			timestamp: '2016-01-05T17:52:15.989315+01:00'.
		
		spec
			project: 'Alien' with: '1.2';
			project: 'FFI' with: '1.10.1';
			package: 'FFI-NB' with: 'FFI-NB-EstebanLorenzano.46';
			package: 'FFI-NB-Tests' with: 'FFI-NB-Tests-EstebanLorenzano.23';
			package: 'FFI-NB-Legacy' with: 'FFI-NB-Legacy-EstebanLorenzano.4' ].