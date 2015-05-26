version10: spec
	<version: '1.0' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec 
			description: 'Version 1.0 the current stable release';
			author: 'Camillo Bruni';
			timestamp: '5/17/2013 23:10'.
		
		spec
			package: 'FileSystem-Smalltalk'  with: 'FileSystem-Smalltalk-CamilloBruni.21';
			package: 'FileSystem-Relative' with: 'FileSystem-Relative-CamilloBruni.5'; 
			package: 'FileSystem-Tests-Relative' with: 'FileSystem-Tests-Relative-CamilloBruni.4' ].