v0_26_3: spec
	<version: '0.26.3' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'fix the alignment of pointers in windows (case 19725)'.
		spec author: 'RonieSalgado'.
		spec timestamp: '2017-03-03 17:06'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.45';
			package: 'Alien' with: 'Alien-RonieSalgado.40';
			package: 'UnifiedFFI' with: 'UnifiedFFI-RonieSalgado.95';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.41';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]