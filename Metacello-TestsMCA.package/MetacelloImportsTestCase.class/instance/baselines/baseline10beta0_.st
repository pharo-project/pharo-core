baseline10beta0: spec 
	<version: '1.0-beta.0-baseline'>
	spec
		for: #common
		do: [
			spec
				package: 'Metacello-Core'
				with: [spec includes: #('Metacello-MC' 'Metacello-Platform' )];
				
				package: 'Metacello-MC';
				
				package: 'Metacello-Platform'
				with: [spec requires: #('Metacello-MC' )]].
