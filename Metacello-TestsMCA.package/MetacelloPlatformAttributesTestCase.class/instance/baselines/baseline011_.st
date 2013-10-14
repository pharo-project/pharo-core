baseline011: spec 
	<version: '0.11-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec description: 'FFI project '.
		spec repository: 'source.squeakfoundation.org/FFI'.

		spec 
			package: 'FFI-Kernel';
			package: 'FFI-Examples' with: [
				spec requires: #('FFI-Kernel' ) ];
			package: 'FFI-Tests' with: [
				spec requires: #('FFI-Examples' ) ]].
