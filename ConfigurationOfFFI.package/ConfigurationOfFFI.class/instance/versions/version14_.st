version14: spec
	<version: '1.4' imports: #('1.2-baseline')>
	
	spec for: #common do: [
		spec blessing: #development.
		spec description: 'A few enhancements'.
		
		spec package: 'FFI-Pools' with: 'FFI-Pools-eem.2'.
		spec package: 'FFI-Kernel' with: 'FFI-Kernel-ar.22'.
		spec package: 'FFI-Tests' with: 'FFI-Tests-jcg.4'.
		spec package: 'FFI-MacOS' with: 'FFI-MacOS-spd.5'.
		spec package: 'FFI-Unix' with: 'FFI-Unix-tbn.3'.
		spec package: 'FFI-Win32' with: 'FFI-Win32-tbn.5'. 
		
		 ]