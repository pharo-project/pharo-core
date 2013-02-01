version
version02: spec
	<version: '0.2' imports: #('0.1-baseline')>
	
	spec for: #pharo do: [ 
		
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.4';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.2' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.3'.
			].