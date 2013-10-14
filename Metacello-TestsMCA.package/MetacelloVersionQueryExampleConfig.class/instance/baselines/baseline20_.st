baseline20: spec 
	<version: '2.0-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core';
			package: 'Example-AddOn' with: [ spec requires: #('Example-Core' ) ].
		spec
			group: 'Core' with: #('default' );
			group: 'default' with: #('Example-Core' ) ].
