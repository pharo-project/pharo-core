version
version03: spec
	<version: '0.3' imports: #('0.1-baseline')>
	
	spec for: #pharo do: [ 
		
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.6';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.2' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.4'.
			].