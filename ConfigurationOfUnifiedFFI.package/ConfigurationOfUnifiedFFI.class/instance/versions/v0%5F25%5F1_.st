v0_25_1: spec
	<version: '0.25.1' imports: #('0.13-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: '#readString and #readStringUTF8 verify NULL'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2017-01-07 17:30'.
		spec 
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.42';
			package: 'Alien' with: 'Alien-eem.35';
			package: 'UnifiedFFI' with: 'UnifiedFFI-EstebanLorenzano.83';
			package: 'UnifiedFFI-Tests' with: 'UnifiedFFI-Tests-EstebanLorenzano.35';
			package: 'UnifiedFFI-Legacy' with: 'UnifiedFFI-Legacy-EstebanLorenzano.3' ]