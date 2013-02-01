version
version07: spec
	<version: '0.7' imports: #('0.5-baseline')>
	
	spec for: #pharo do: [ 
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.32';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.4' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.7'.
			].