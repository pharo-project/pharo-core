version105: spec
	<version: '1.0.5' imports: #('1.0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'match Pharo1.2.1 update: #12345
- align branch naming conventions with rest of the world
  Package { "." Branch } "-" Author "." Version
- Issue 3682:	multiple undo/redo is broken in 1.2 because of Ocompletion. Part two. Thanks Alain Plantec.
-  Issue 3660:	Revert incorrect Monticello branch naming support. Thanks lukas, julian and dale.
1.0.5 (dkh.27):
- add SystemOrganizer>>environment (Squeak only)
- tweak tests to see errors plus add expectedFailure for revert ... Monticello bug in Squeak
1.0.5 (dkh.29)
- ported to GemStone ... tests green
1.0.5 (dkh.32):
- ported to Pharo1.0'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '6/7/2011 15:27'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-StephaneDucasse.133';
			package: 'Gofer-Tests' with: 'Gofer-Tests-StephaneDucasse.129'. ].

	spec for: #'pharo1.0.x' do: [
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core.pharo10-dkh.135';
			package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10-dkh.131' ].

	spec for: #'pharo1.1.x' do: [
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core.pharo10-dkh.135';
			package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10-dkh.131' ].

	spec for: #'squeak' do: [
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core.squeak-dkh.135';
			package: 'Gofer-Tests' with: 'Gofer-Tests.squeak-dkh.131'. ].

	spec for: #'gemstone' do: [
		spec package: 'Gofer-Tests' with: 'Gofer-Tests.gemstone-DaleHenrichs.130'. ].
