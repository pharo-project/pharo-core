version
version09: spec
	<version: '0.9' imports: #('0.5-baseline')>
	
	spec for: #pharo do: [ 
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.67';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.6' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.10'.
			].