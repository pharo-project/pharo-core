version
version01: spec
	<version: '0.1' imports: #('0.1-baseline')>
	
	spec for: #pharo do: [ 
		
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.1';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.1' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.1'.
			].