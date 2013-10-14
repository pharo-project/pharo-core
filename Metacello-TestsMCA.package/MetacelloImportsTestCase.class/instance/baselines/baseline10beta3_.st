baseline10beta3: spec 
	<version: '1.0-beta.3-baseline' imports: #('1.0-beta.0-baseline')>
	spec
		for: #common
		do: [
			spec
				package: 'Metacello-TestsCore'
				with: [spec requires: #('Metacello-Core' )];
				
				package: 'Metacello-Tutorial'
				with: [spec requires: #('Metacello-Core' )];
				
				package: 'Metacello-TutorialTests'
				with: [spec requires: #('Metacello-Tutorial' )]]