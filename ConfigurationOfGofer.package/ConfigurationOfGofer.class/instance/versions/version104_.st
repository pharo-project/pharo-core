version104: spec
	<version: '1.0.4' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'match the package versions shipped in Pharo1.2a-12241'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '11/19/2010 17:26'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-MarcusDenker.129';
			package: 'Gofer-Tests' with: 'Gofer-Tests-StephaneDucasse.125'.].

	spec for: #'gemstone' do: [
		spec blessing: #'development'.
		spec description: 'not ported to GemStone, yet'.
].
