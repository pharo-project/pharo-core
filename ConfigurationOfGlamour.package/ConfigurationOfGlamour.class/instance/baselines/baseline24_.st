baseline24: spec 
	<version: '2.4-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec description: 'Loading moose packages from SmalltalkHub for Pharo1.4'.
		spec repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main'.
		spec 
			package: 'Glamour-Announcements' ;
			package: 'Glamour-Helpers' ;
			package: 'Glamour-Core' with: [spec requires: #('Glamour-Helpers' 'Glamour-Announcements')];
			package: 'Glamour-Presentations'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Browsers'  with: [spec requires: #('Glamour-Core')];
			package: 'Glamour-Tests-Core' ;
			package: 'Glamour-Morphic-Widgets' with: [spec requires: #('Shout' 'NEC')];
			package: 'Glamour-Morphic-Renderer' with: [spec requires: #('Glamour-Morphic-Widgets' 'Glamour-Core')];
			package: 'Glamour-Morphic-Theme';
			package: 'Glamour-Tests-Morphic' with: [spec requires: #('Glamour-Morphic-Renderer' 'BDDExtensions')];
			package: 'Glamour-Examples' ;
			package: 'Glamour-Tools';
			package: 'Glamour-Roassal-Presentations' with: [spec requires: 'Roassal for Glamour'];
			package: 'Glamour-Mondrian-Presentations' with: [spec requires: 'Mondrian for Glamour'];
			package: 'Glamour-Magritte-Presentations' with: [spec requires: #('Magritte3')];
			package: 'Glamour-EyeSee-Presentations' with: [spec requires: 'EyeSee for Glamour'];
			package: 'Glamour-Tests-Mondrian' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-Mondrian-Presentations')];
			package: 'Glamour-Tests-Roassal' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-Roassal-Presentations')];
			package: 'Glamour-Tests-EyeSee' with: [spec requires: #('Glamour-Tests-Morphic' 'Glamour-EyeSee-Presentations')];
			package: 'Glamour-Tests-Resources'.
	spec for: #squeakCommon do: [
			spec package: 'CollectionExtensions' with: [
				spec repository: 'http://smalltalkhub.com/mc/Moose/CollectionExtensions/main'].
			spec
				package: 'Glamour-Tools' with: [spec requires: 'CollectionExtensions'].
		].

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
						'Glamour-Tests-Mondrian'
						'Glamour-Tests-EyeSee'
						'Glamour-Tests-Roassal'
						'Glamour-Tests-Resources'). 
		spec
			project: 'Shout' with: [
				spec
					className: 'ConfigurationOfShout';
					file: 'ConfigurationOfShout';
					version: '1.3';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec
			project: 'NEC' with: [
				spec
					className: 'ConfigurationOfNewECompletion';
					file: 'ConfigurationOfNewECompletion';
					version: #stable;
					repository: 'http://ss3.gemstone.com/ss/NEC' ].
		spec
			project: 'BDDExtensions' with: [
				spec
					className: 'ConfigurationOfBDDExtensions';
					file: 'ConfigurationOfBDDExtensions';
					version: '1.0-baseline';
					repository: 'http://www.squeaksource.com/BDDExtensions' ].
		spec
			project: 'Mondrian for Glamour' with: [
				spec
					className: 'ConfigurationOfMondrian';
					file: 'ConfigurationOfMondrian';
					version: 'default';
					repository: 'http://smalltalkhub.com/mc/Moose/Mondrian/main' ].
		spec
			project: 'Roassal for Glamour' with: [
				spec
					className: 'ConfigurationOfRoassal';
					file: 'ConfigurationOfRoassal';
					version: #development;
					repository: 'http://www.squeaksource.com/Roassal' ].
		spec
			project: 'EyeSee for Glamour' with: [
				spec
					className: 'ConfigurationOfEyeSee';
					file: 'ConfigurationOfEyeSee';
					version: 'default';
					repository: 'http://smalltalkhub.com/mc/Moose/EyeSee/main' ].
		spec project: 'Magritte3' with: [
			spec
					className: 'ConfigurationOfMagritte3';
					file: 'ConfigurationOfMagritte3';
					version: #stable;
					repository: 'http://source.lukas-renggli.ch/magritte3';
					loads: #('Magritte-Model' 'Magritte-Tests-Model' 'Magritte-Morph') ] ]