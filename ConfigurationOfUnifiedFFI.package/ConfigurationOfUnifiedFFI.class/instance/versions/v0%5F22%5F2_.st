v0_22_2: spec
	<version: '0.22.2' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'fix type array tests'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2016-07-25 17:10'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.41';
			package: 'Alien' with: 'Alien-eem.35';
			package: 'UnifiedFFI' with: 'UnifiedFFI-EstebanLorenzano.69';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.30';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]