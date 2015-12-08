baseline100: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec 
			package: 'Gofer-Core';
			package: 'Gofer-Tests' with: [ spec requires: 'Gofer-Core' ].
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Gofer-Core');
			group: 'Tests' with: #('Gofer-Tests'). ].
	spec for: #pharo do: [
		spec 
			repository: 'http://www.squeaksource.com/Pharo';
			repository: 'http://seaside.gemstone.com/ss/metacello'. ].
	spec for: #squeak do: [
		spec repository: 'http://seaside.gemstone.com/ss/metacello'. ].
	spec for: #gemstone do: [
		spec repository: 'http://seaside.gemstone.com/ss/metacello'. ].
