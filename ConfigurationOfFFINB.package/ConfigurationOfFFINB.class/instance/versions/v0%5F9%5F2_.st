v0_9_2: spec
	<version: '0.9.2' imports: #('0.9-baseline')>
	
	spec for: #'common' do: [ 
		spec 
			blessing: #'release';
			description: 'fix structure alignment';
			author: 'EstebanLorenzano';
			timestamp: '2016-01-06 14:43'.
		
		spec
			project: 'Alien' with: '1.2';
			project: 'FFI' with: '1.10.1';
			package: 'FFI-NB' with: 'FFI-NB-EstebanLorenzano.47';
			package: 'FFI-NB-Tests' with: 'FFI-NB-Tests-EstebanLorenzano.23';
			package: 'FFI-NB-Legacy' with: 'FFI-NB-Legacy-EstebanLorenzano.4' ].