baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			package: 'Renraku';
			package: 'Renraku-Test' with: [ spec requires: 'Renraku' ].

		spec
			group: 'default' with: #('Renraku' 'Renraku-Test');
			group: 'Core' with: #('Renraku');
         group: 'Tests' with: #('Renraku-Test') ]