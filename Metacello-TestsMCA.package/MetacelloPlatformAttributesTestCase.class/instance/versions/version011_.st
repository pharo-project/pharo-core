version011: spec 
	<version: '0.11' imports: #('0.11-baseline' )>
	
	spec for: #common do: [
		spec blessing: #release.
		spec description: 'FFI project ... used by GemTools for Pharo 1.0beta #10440'.
		spec 
			package: 'FFI-Kernel' with: 'FFI-Kernel-ar.8';
			package: 'FFI-Examples' with: 'FFI-Examples-ar.1';
			package: 'FFI-Tests' with: 'FFI-Tests-ar.2' ].
	spec for: #'pharo1.0Beta' do: [
		spec 
			package: 'FFI-Kernel' with: 'FFI-Kernel-ar.11';
			package: 'FFI-Tests' with: 'FFI-Tests-ar.3' ].
