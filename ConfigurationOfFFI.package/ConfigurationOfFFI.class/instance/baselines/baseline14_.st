baseline14: spec
	<version: '1.4-baseline'>
    
	spec for: #common do: [
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
			group: 'default' with: #('Core' 'Examples' 'Tests');
			group: 'Core' with: #('FFI-Pools' 'FFI-Kernel');
			group: 'Examples' with: #('FFI-MacOS' 'FFI-Unix' 'FFI-Win32');
			group: 'Tests' with: #('FFI-Tests') ].
	spec for: #pharo do: [
		spec
			package: 'AST-FFI-Pharo30Compatibility' with: [ 
				spec repository: 'http://smalltalkhub.com/mc/PharoExtras/FFICompatibility/main'];
			package: 'FFI-Kernel' with: [
				spec requires: #('AST-FFI-Pharo30Compatibility')]
			].