v0_26_7: spec
	<version: '0.26.7' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: ''.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2017-04-05 12:00'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.45';
			package: 'Alien' with: 'Alien-RonieSalgado.40';
			package: 'UnifiedFFI' with: 'UnifiedFFI-EstebanLorenzano.106';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.41';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]