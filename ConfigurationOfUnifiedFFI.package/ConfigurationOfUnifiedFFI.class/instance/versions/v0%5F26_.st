v0_26: spec
	<version: '0.26' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'prepared for 64bits'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2017-02-19 16:20'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.45';
			package: 'Alien' with: 'Alien-RonieSalgado.40';
			package: 'UnifiedFFI' with: 'UnifiedFFI-EstebanLorenzano.90';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.40';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]