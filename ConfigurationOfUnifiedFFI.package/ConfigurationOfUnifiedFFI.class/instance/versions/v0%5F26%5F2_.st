v0_26_2: spec
	<version: '0.26.2' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'fix initialisation of compiledSpecs (case 19788)'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2017-03-03 14:00'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.45';
			package: 'Alien' with: 'Alien-RonieSalgado.40';
			package: 'UnifiedFFI' with: 'UnifiedFFI-EstebanLorenzano.94';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.41';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]