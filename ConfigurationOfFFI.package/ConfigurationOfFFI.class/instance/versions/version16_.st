version16: spec
	<version: '1.6' imports: #('1.2-baseline')>
	
	spec for: #pharo do: 
		[spec blessing: #release.
		spec description: 'Use latest packages'.
		
		spec package: 'FFI-Pools' with: 'FFI-Pools-eem.3'.
		spec package: 'FFI-Kernel' with: 'FFI-Kernel-tbn.25'.
		spec package: 'FFI-Tests' with: 'FFI-Tests-tbn.6'.
		spec package: 'FFI-MacOS' with: 'FFI-MacOS-spd.5'.
		spec package: 'FFI-Unix' with: 'FFI-Unix-mtf.4'.
		spec package: 'FFI-Win32' with: 'FFI-Win32-tbn.10'].

	"According to spd this version will not work for Squeak due to Win32 examples"
	spec for: #squeakCommon do: 
		[spec blessing: #broken ].