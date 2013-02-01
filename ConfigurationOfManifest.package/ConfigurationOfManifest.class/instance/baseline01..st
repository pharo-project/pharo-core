baseline
baseline01: spec
	<version: '0.1-baseline'>
	spec for: #pharo do: [
		spec
			blessing: #baseline;	
			repository: 'http://www.squeaksource.com/PharoTaskForces';
			package: 'Manifest-Core';		
			package: 'Manifest-Resources-Tests';
			package: 'Manifest-Tests' 
				with: [ spec requires: 'Manifest-Core'; requires: 'Manifest-Resources-Tests' ].
		spec group: 'default' with: #('Manifest-Core' 'Manifest-Tests')
			]