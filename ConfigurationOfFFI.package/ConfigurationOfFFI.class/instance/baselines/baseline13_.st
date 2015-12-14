baseline13: spec
	<version: '1.3-baseline'>
    
	spec for: #squeakCommon do: [
		spec blessing: #baseline.
		spec description: 'Explicit dependencies & groups'.
		spec repository: 'http://source.squeakfoundation.org/FFI'.
		spec postLoadDoIt: #ffiExampleInitialization10.
        
		spec
			package: 'FFI-Pools';
			package: 'FFI-Kernel' with: [ spec requires: 'FFI-Pools' ];
			package: 'FFI-Tests' with: [ spec requires: 'FFI-Kernel' ];
			package: 'FFI-MacOS' with: [ spec requires: 'FFI-Kernel' ];
			package: 'FFI-Unix' with: [ spec requires: 'FFI-Kernel' ];
			package: 'FFI-Win32' with: [ spec requires: 'FFI-Kernel' ].
		
		spec
			group: 'default' with: #('Core' 'Examples');
			group: 'Core' with: #('FFI-Pools' 'FFI-Kernel');
			group: 'Examples' with: #('FFI-MacOS' 'FFI-Unix' 'FFI-Win32');
			group: 'Tests' with: #('FFI-Tests') ].