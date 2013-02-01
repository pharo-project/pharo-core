version
version08: spec
	<version: '0.8' imports: #('0.5-baseline')>
	
	spec for: #pharo do: [ 
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.37';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.4' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.7'.
			].