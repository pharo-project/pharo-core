version2192: spec
	<version: '2.19.2' imports: #('2.2-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'do not show code search menu for simple text edit boxes'.
			spec author: 'PavelKrivanek'.
			spec timestamp: '2016-04-22 14:40'.
			spec 
				package: 'Rubric' with: 'Rubric-PavelKrivanek.362';
				package: 'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.3' ]