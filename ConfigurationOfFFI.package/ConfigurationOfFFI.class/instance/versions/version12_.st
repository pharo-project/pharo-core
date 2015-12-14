version12: spec
	<version: '1.2' imports: #('1.2-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
		spec description: '- Remove the Examples package
		- Added postLoadDoIt to project level
		- no underscore assignments'.
		
		spec package: 'FFI-Pools' with: 'FFI-Pools-ar.1'.
		spec package: 'FFI-Kernel' with: 'FFI-Kernel-ar.13'.
		spec package: 'FFI-Tests' with: 'FFI-Tests-ar.3'.
		spec package: 'FFI-MacOS' with: 'FFI-MacOS-ar.3'.
		spec package: 'FFI-Unix' with: 'FFI-Unix-tbn.3'.
		spec package: 'FFI-Win32' with: 'FFI-Win32-ar.3'. 
		
		 ]