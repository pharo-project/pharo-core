version13: spec
	<version: '1.3' imports: #('1.2-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
		spec description: 'Compliant with Pharo 1.1'.
		
		spec package: 'FFI-Pools' with: 'FFI-Pools-eem.2'.
		spec package: 'FFI-Kernel' with: 'FFI-Kernel-tbn.20'.
		spec package: 'FFI-Tests' with: 'FFI-Tests-jcg.4'.
		spec package: 'FFI-MacOS' with: 'FFI-MacOS-spd.5'.
		spec package: 'FFI-Unix' with: 'FFI-Unix-tbn.3'.
		spec package: 'FFI-Win32' with: 'FFI-Win32-ar.3'. 
		
		 ]