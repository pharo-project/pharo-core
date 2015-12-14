version19: spec
	<version: '1.9' imports: #('1.4-baseline')>
	
	spec for: #squeakCommon do: [
		spec blessing: #release.
		
		spec			
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-tbn.25';
			package: 'FFI-Tests' with: 'FFI-Tests-tbn.6';
			package: 'FFI-MacOS' with: 'FFI-MacOS-spd.5';
			package: 'FFI-Unix' with: 'FFI-Unix-mtf.4'].

	spec for: #pharo do: [
		spec
			package: 'FFI-Win32' with: 'FFI-Win32-tbn.11';
			package: 'AST-FFI-Pharo30Compatibility' 
				with: 'AST-FFI-Pharo30Compatibility-EstebanLorenzano.5'.
	].	

	"Squeak is not able to handle latest Examples"
	spec for: #squeakCommon do: [ 
		spec
			package: 'FFI-Win32' with: 'FFI-Win32-mtf.8' ]