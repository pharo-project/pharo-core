version103: spec
	<version: '1.0.3' imports: #('1.0-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- pick up most recent gofer (5/14/2010 13:54)
  - improved the method comments
  - made parser more robust
  - made tests run faster
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '5/14/2010 14:03'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-StephaneDucasse.125';
			package: 'Gofer-Tests' with: 'Gofer-Tests-MarcusDenker.124'.].
	spec for: #gemstone do: [
		spec blessing: #development.
		spec description: 'not ported to GemStone, yet' ].