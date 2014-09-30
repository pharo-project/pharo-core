baseline23: spec 
	<version: '2.3-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Glamour'.
		spec 
			package: 'CollectionExtensions' with: [spec repository: 'http://www.squeaksource.com/CollectionExtensions'];
			package: 'Glamour-Announcements' ;
			package: 'Glamour-Helpers' ;
			package: 'Glamour-Core' with: [spec requires: #('Glamour-Helpers' 'Glamour-Announcements')];
			package: 'Glamour-Presentations'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Browsers'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Tests-Core' ;
			package: 'Glamour-Morphic-Widgets';
			package: 'Glamour-Morphic-Renderer' with: [spec requires: #('Glamour-Morphic-Widgets' 'Glamour-Core')];
			package: 'Glamour-Morphic-Theme';
			package: 'Glamour-Tests-Morphic' with: [spec requires: #('Glamour-Morphic-Renderer')];
			package: 'Glamour-Examples' ;
			package: 'Glamour-Tools' with: [spec requires: 'CollectionExtensions'];
			package: 'Magritte-Model' with: [
				spec repository: 'http://source.lukas-renggli.ch/magritte2'.
				spec requires: 'Grease'];
			package: 'Magritte-Tests-Model' with: [
				spec repository: 'http://source.lukas-renggli.ch/magritte2'.
				spec requires: 'Magritte-Model'];
			package: 'Magritte-Morph' with: [
				spec repository: 'http://source.lukas-renggli.ch/magritte2'.
				spec requires: #('Magritte-Model')];
			package: 'Magritte-Pharo-Model' with: [
				spec repository: 'http://source.lukas-renggli.ch/magritte2'.
				spec requires: 'Magritte-Model' ];
			package: 'Glamour-Mondrian-Presentations' with: [spec requires: 'Mondrian for Glamour'];
			package: 'Glamour-Magritte-Presentations' with: [spec requires: #('Magritte-Morph' 'Magritte-Pharo-Model')];
			package: 'Glamour-EyeSee-Presentations' with: [spec requires: 'EyeSee for Glamour'];
			package: 'Glamour-Tests-Mondrian' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-Mondrian-Presentations')];
			package: 'Glamour-Tests-EyeSee' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-EyeSee-Presentations')].

		spec group: 'Core' with: #(
						'Glamour-Announcements'
						'Glamour-Helpers'
						'Glamour-Core'
						'Glamour-Presentations'
						'Glamour-Browsers'
						'Glamour-Examples'
						'Glamour-Tools').
		spec group: 'Morphic' with: #(
						'Glamour-Morphic-Renderer'
						'Glamour-Morphic-Theme').
		spec group: 'Extras' with: #(
						'Glamour-Mondrian-Presentations'
						'Glamour-Magritte-Presentations'
						'Glamour-EyeSee-Presentations').
		spec group: 'Core Tests' with: #(
						'Glamour-Tests-Core'
						'Glamour-Examples'
						'Glamour-Tests-Morphic'). 
		spec group: 'Tests' with: #(
						'Glamour-Tests-Core'
						'Glamour-Examples'
						'Glamour-Tests-Morphic'
						'Glamour-Tests-Mondrian'
						'Glamour-Tests-EyeSee'). 
		spec
			project: 'Mondrian for Glamour' with: [
				spec
					className: 'ConfigurationOfMondrian';
					file: 'ConfigurationOfMondrian';
					version: 'default';
					repository: 'http://www.squeaksource.com/Mondrian' ].
		spec
			project: 'EyeSee for Glamour' with: [
				spec
					className: 'ConfigurationOfEyeSee';
					file: 'ConfigurationOfEyeSee';
					version: 'default';
					repository: 'http://www.squeaksource.com/EyeSee' ].
		spec
			project: 'Grease' with: [
				spec
					className: 'ConfigurationOfGrease';
					file: 'ConfigurationOfGrease';
					version: #stable;
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
	]