baseline21: spec 
	<version: '2.1-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core';
			package: 'Core' with: [ spec requires: #('Example-Core' ) ].
		spec
			group: 'default' with: #('Example-Core' ) ].
