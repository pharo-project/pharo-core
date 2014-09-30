baseline28: spec 
	<version: '2.8-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec description: 'Pharo 3.0'.
		spec repository: 'http://www.smalltalkhub.com/mc/Moose/Glamour/main'.
		spec 
			package: 'Glamour-Announcements' ;
			package: 'Glamour-Helpers' ;
			package: 'Glamour-Core' with: [spec requires: #('Glamour-Helpers' 'Glamour-Announcements')];
			package: 'Glamour-Presentations'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Browsers'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Tests-Core' ;
			package: 'Glamour-Morphic-Widgets' with: [spec requires: 'Spotlight2'];
			package: 'Glamour-Morphic-Renderer' with: [spec requires: #('Glamour-Morphic-Widgets' 'Glamour-Core')];
			package: 'Glamour-Morphic-Theme';
			package: 'Glamour-Tests-Morphic' with: [spec requires: #('Glamour-Morphic-Renderer')];
			package: 'Glamour-Examples' with: [spec requires: #('Glamour-Tools')];
			package: 'Glamour-Tools' with: [spec requires: #('Glamour-Core')];
			package: 'Rubric' with: [spec repository: 'http://www.smalltalkhub.com/mc/AlainPlantec/Rubric/main'];
			package: 'Glamour-Rubric-Presentations' with: [spec requires: 'Rubric'];
			package: 'Glamour-Roassal-Presentations' with: [spec requires: #('Roassal for Glamour' 'Glamour-Morphic-Renderer')];
			package: 'Glamour-Roassal2-Presentations' with: [spec requires: #('Roassal2 for Glamour' 'Glamour-Morphic-Renderer')];
			package: 'Glamour-Magritte-Presentations' with: [spec requires: #('Magritte3')];
			package: 'Glamour-EyeSee-Presentations' with: [spec requires: 'EyeSee for Glamour'];
			package: 'Glamour-GraphET-Presentations' with: [spec requires: #('Graph-ET' 'Glamour-Tools')];
			package: 'Glamour-Tests-Rubric' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-Rubric-Presentations')];
			package: 'Glamour-Tests-Roassal' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-Roassal-Presentations')];
			package: 'Glamour-Tests-EyeSee' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-EyeSee-Presentations')];
			package: 'Glamour-Tests-Resources'].

	spec for: #squeakCommon do: [ 
		spec
			package: 'CollectionExtensions' with: [spec repository: 'http://www.smalltalkhub.com/mc/Moose/CollectionExtensions/main'].
		spec
			package: 'Glamour-Tools' with: [spec requires: #('Glamour-Core' 'CollectionExtensions')].
		 ].

	spec for: #common do: [ 
		spec group: 'Core' with: #(
						'Glamour-Announcements'
						'Glamour-Helpers'
						'Glamour-Core'
						'Glamour-Presentations'
						'Glamour-Browsers'
						'Glamour-Examples'
						'Glamour-Tools'
						'Glamour-Rubric-Presentations').
		spec group: 'Morphic' with: #(
						'Glamour-Morphic-Renderer'
						'Glamour-Morphic-Theme').
		spec group: 'Roassal' with: #(
						'Glamour-Roassal-Presentations'
						'Glamour-GraphET-Presentations').				
		spec group: 'Roassal2' with: #(
						'Glamour-Roassal2-Presentations').
		spec group: 'Extras' with: #(
						'Glamour-Magritte-Presentations'
						'Glamour-EyeSee-Presentations'
						'Glamour-Roassal-Presentations').
		spec group: 'Core Tests' with: #(
						'Glamour-Tests-Core'
						'Glamour-Examples'
						'Glamour-Tests-Resources'
						'Glamour-Tests-Morphic'). 
		spec group: 'Tests' with: #(
						'Glamour-Tests-Core'
						'Glamour-Examples'
						'Glamour-Tests-Morphic'
						'Glamour-Tests-EyeSee'
						'Glamour-Tests-Roassal'
						'Glamour-Tests-Rubric'
						'Glamour-Tests-Resources'). 
		spec
			project: 'Roassal for Glamour' with: [
				spec
					className: 'ConfigurationOfRoassal';
					file: 'ConfigurationOfRoassal';
					version: #development;
					repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal/main' ].
		spec
			project: 'Roassal2 for Glamour' with: [
				spec
					className: 'ConfigurationOfRoassal2';
					file: 'ConfigurationOfRoassal2';
					version: #development;
					repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].
		spec
			project: 'EyeSee for Glamour' with: [
				spec
					className: 'ConfigurationOfEyeSee';
					file: 'ConfigurationOfEyeSee';
					version: #development;
					repository: 'http://www.smalltalkhub.com/mc/Moose/EyeSee/main' ].
		spec
			project: 'Graph-ET' with: [
				spec
					className: 'ConfigurationOfGraphET';
					file: 'ConfigurationOfGraphET';
					version: #development;
					repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/GraphET/main' ].
		spec
			project: 'Graph-ET2' with: [
				spec
					className: 'ConfigurationOfGraphET2';
					file: 'ConfigurationOfGraphET2';
					version: #development;
					repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/GraphET2/main' ].
		spec project: 'Magritte3' with: [
			spec
					className: 'ConfigurationOfMagritte3';
					file: 'ConfigurationOfMagritte3';
					version: #development;
					repository: 'http://www.smalltalkhub.com/mc/Magritte/Magritte3/main';
					loads: #('Magritte-Model' 'Magritte-Tests-Model' 'Magritte-Morph' 'Magritte-Pharo-Model') ].
		spec project: 'Spotlight2' with: [ 
			spec 
					className: 'ConfigurationOfSpotlight2';
					file: 'ConfigurationOfSpotlight2';
					version: #development;
					repository: 'http://www.smalltalkhub.com/mc/PharoExtras/Spotlight2/main' ]
	]