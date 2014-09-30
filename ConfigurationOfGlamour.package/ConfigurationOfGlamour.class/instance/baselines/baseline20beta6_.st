baseline20beta6: spec 
	<version: '2.0-beta.6-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec description: 'Work on Pharo 1.1.1'.
		spec author: 'Alexandre Bergel'.
		spec repository: 'http://www.squeaksource.com/Glamour'.
		spec 
			package: 'Glamour-Announcements' ;
			package: 'Glamour-Helpers' ;
			package: 'Glamour-Core' with: [spec requires: #('Glamour-Helpers' 'Glamour-Announcements')];
			package: 'Glamour-Presentations'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Browsers'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Scripting' with: [spec requires: #('Glamour-Presentations' 'Glamour-Browsers' 'Glamour-Core' 'Mondrian for Glamour')];
			package: 'Glamour-Tests-Core' ;
			package: 'Glamour-Morphic-Renderer' with: [spec requires: #('Shout')];
			package: 'Glamour-Morphic-Theme';
			package: 'Glamour-Tests-Morphic' with: [spec requires: #('Glamour-Morphic-Renderer')];
			package: 'Glamour-Examples' ;
			package: 'Glamour-Tools';
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
			package: 'Glamour-Tests-Mondrian' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-Mondrian-Presentations')].

		spec group: 'Core' with: #(
						'Glamour-Announcements'
						'Glamour-Helpers'
						'Glamour-Core'
						'Glamour-Presentations'
						'Glamour-Browsers'
						'Glamour-Scripting'
						'Glamour-Examples'
						'Glamour-Tools').
		spec group: 'Morphic' with: #(
						'Glamour-Morphic-Renderer'
						'Glamour-Morphic-Theme').
		spec group: 'Extras' with: #(
						'Glamour-Mondrian-Presentations'
						'Glamour-Magritte-Presentations').
		spec group: 'Tests' with: #(
						'Glamour-Tests-Core'
						'Glamour-Examples'
						'Glamour-Tests-Morphic'
						'Glamour-Tests-Mondrian'). 
		spec
			project: 'Shout' with: [
				spec
					className: 'ConfigurationOfShout';
					file: 'ConfigurationOfShout';
					version: '1.1';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].					
		spec
			project: 'Mondrian for Glamour' with: [
				spec
					className: 'ConfigurationOfMondrian';
					file: 'ConfigurationOfMondrian';
					version: '2.1.2';
					repository: 'http://www.squeaksource.com/Mondrian' ].
		spec
			project: 'Grease' with: [
				spec
					className: 'ConfigurationOfGrease';
					file: 'ConfigurationOfGrease';
					version: '1.0-alpha9.1';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
	]