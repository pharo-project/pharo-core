version
version11: spec
	<version: '1.1' imports: #('0.6-baseline')>
	
	spec for: #pharo do: [ 
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier70';
			package: 'Manifest-CriticBrowser' with: 'Manifest-CriticBrowser-SimonAllier.8';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.6' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.10'.
			].