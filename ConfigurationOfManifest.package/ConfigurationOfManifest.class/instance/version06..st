version
version06: spec
	<version: '0.6' imports: #('0.4-baseline')>
	
	spec for: #pharo do: [ 
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.24';
			package: 'Manifest-Tools' with: 'Manifest-Tools-sd.4';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.2' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.6'.
			].