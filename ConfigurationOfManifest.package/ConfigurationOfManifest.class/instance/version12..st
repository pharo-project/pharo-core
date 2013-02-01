version
version12: spec
	<version: '1.2' imports: #('0.6-baseline')>
	
	spec for: #pharo do: [ 
		spec
			package: 'Manifest-Core' with: 'Manifest-Core-SimonAllier.91';
			package: 'Manifest-CriticBrowser' with: 'Manifest-CriticBrowser-SimonAllier.23';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.8' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.19'.
			].
		World resetWorldMenu.