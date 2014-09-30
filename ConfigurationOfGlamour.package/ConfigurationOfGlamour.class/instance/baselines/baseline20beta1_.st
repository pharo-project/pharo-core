baseline20beta1: spec 
	<version: '2.0-beta.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Glamour'.
		spec 
			package: 'Morphic-MorphTreeWidget' with: [
				spec file: 'Morphic-MorphTreeWidget-AlainPlantec.17'.
				spec repository: 'http://www.squeaksource.com/Momo' ];
			package: 'Glamour-Helpers' ;
			package: 'Glamour-Squeak' ;
			package: 'Glamour-Core' ;
			package: 'Glamour-Presentations' ;
			package: 'Glamour-Browsers' ;
			package: 'Glamour-Scripting' ;
			package: 'Glamour-Tests' ;
			package: 'Glamour-Morphic' with: [spec requires: #('Morphic-MorphTreeWidget')];
			package: 'Glamour-Test-Morphic' ;
			package: 'Glamour-Examples'.
		spec group: 'Tests' with: #(
						'Glamour-Tests'
						'Glamour-Examples'
						'Glamour-Test-Morphic'). 
		spec
			project: 'Mondrian for Glamour' with: [
				spec
					className: 'ConfigurationOfMondrian';
					file: 'ConfigurationOfMondrian';
					version: 'default';
					repository: 'http://www.squeaksource.com/Mondrian' ].
	]