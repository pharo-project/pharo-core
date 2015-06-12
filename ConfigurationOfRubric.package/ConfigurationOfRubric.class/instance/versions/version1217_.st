version1217: spec
	<version: '1.2.17' imports: #('2.1-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'integrate the correction of Alain for issue 15720.'.
			spec author: 'CyrilFerlicot'.
			spec timestamp: '6/12/2015 10:06'.
			spec package: 'Rubric' with: 'Rubric-AlainPlantec.219' ]