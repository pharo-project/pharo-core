version2191: spec
	<version: '2.19.1' imports: #('2.2-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'dumb (and probably prone to errors) fix for menu ordering'.
			spec author: 'EstebanLorenzano'.
			spec timestamp: '2016-04-22 11:50'.
			spec 
				package: 'Rubric' with: 'Rubric-EstebanLorenzano.361';
				package: 'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.3' ]