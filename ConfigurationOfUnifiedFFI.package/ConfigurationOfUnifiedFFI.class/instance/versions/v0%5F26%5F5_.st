v0_26_5: spec
	<version: '0.26.5' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'fix a couple of DynamicLoader errors'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2017-03-06 15:00'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.45';
			package: 'Alien' with: 'Alien-RonieSalgado.40';
			package: 'UnifiedFFI' with: 'UnifiedFFI-EstebanLorenzano.97';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.41';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]