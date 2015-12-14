version11: spec
	<version: '1.1' imports: #('1.0-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
     	spec description: 'FFI-Examples removed from repository!'.
 		
		spec package: 'FFI-Pools' with: 'FFI-Pools-ar.1'.
		spec package: 'FFI-Kernel' with: 'FFI-Kernel-ar.13'.
		spec package: 'FFI-Tests' with: 'FFI-Tests-ar.3'.
		spec package: 'FFI-Examples' with: 'FFI-Examples-ar.1' ]