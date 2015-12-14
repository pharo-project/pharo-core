version1_10: spec
	<version: '1.10' imports: #('1.5-baseline')>
	
	spec for: #squeakCommon do: [
		spec blessing: #release.
		
		spec			
			package: 'FFI-Pools' with: 'FFI-Pools-eem.3';
			package: 'FFI-Kernel' with: 'FFI-Kernel-EstebanLorenzano.27';
			package: 'FFI-Tests' with: 'FFI-Tests-EstebanLorenzano.8';
			package: 'FFI-MacOS' with: 'FFI-MacOS-spd.5';
			package: 'FFI-Unix' with: 'FFI-Unix-mtf.4'].

	spec for: #pharo do: [
		spec
			package: 'FFI-Win32' with: 'FFI-Win32-tbn.11';
			package: 'AST-FFI-Pharo50Compatibility' 
				with: 'AST-FFI-Pharo50Compatibility-EstebanLorenzano.1'.
	].	

	"Squeak is not able to handle latest Examples"
	spec for: #squeakCommon do: [ 
		spec
			package: 'FFI-Win32' with: 'FFI-Win32-mtf.8' ]