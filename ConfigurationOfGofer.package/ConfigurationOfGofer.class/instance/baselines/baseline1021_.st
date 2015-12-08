baseline1021: spec 
	<version: '1.0.2.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			repository: 'http://www.squeaksource.com/metacello';
			repository: 'http://seaside.gemstone.com/ss/metacello'.
		spec 
			package: 'Gofer-Core';
			package: 'Gofer-Tests' with: [ spec requires: 'Gofer-Core' ].
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Gofer-Core');
			group: 'Tests' with: #('Gofer-Tests'). ].
