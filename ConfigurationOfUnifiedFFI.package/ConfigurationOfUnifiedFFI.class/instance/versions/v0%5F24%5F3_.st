v0_24_3: spec
	<version: '0.24.3' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fix #add:finalizing: in AlienWeakTable'.
		spec author: 'PabloTesone'.
		spec timestamp: '2016-11-22 17:02'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.42';
			package: 'Alien' with: 'Alien-PabloTesone.36';
			package: 'UnifiedFFI' with: 'UnifiedFFI-EstebanLorenzano.77';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.35';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]