version10beta3Extra: spec 
	<version: '1.0-beta.3-extra' imports: #('1.0-beta.3-baseline')>
	spec
		for: #common
		do: [
			spec
				package: 'Metacello-Core' with: 'Metacello-Core-dkh.1';
				package: 'Metacello-MC' with: 'Metacello-MC-dkh.1';
				package: 'Metacello-Platform' with: 'Metacello-Platform-dkh.1';
				package: 'Metacello-TestsCore' with: 'Metacello-TestsCore-dkh.1';
				package: 'Metacello-Tutorial' with: 'Metacello-Tutorial-dkh.1';
				package: 'Metacello-TutorialTests' with: 'Metacello-TutorialTests-dkh.1' ].
