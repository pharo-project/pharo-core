version22: spec
	<version: '2.2' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'release for pharo 1.3'.
		spec author: 'GuillermoPolito'.
		spec timestamp: '9/26/2011 21:07'.
		spec 
			package: 'CollectionExtensions' with: 'CollectionExtensions-TudorGirba.29'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-TudorGirba.6';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-TudorGirba.32';
			package: 'Glamour-Core' with: 'Glamour-Core-TudorGirba.221';
			package: 'Glamour-Presentations'  with: 'Glamour-Presentations-TudorGirba.109';
			package: 'Glamour-Browsers'  with: 'Glamour-Browsers-TudorGirba.90';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-TudorGirba.66';
			package: 'Glamour-Morphic-Widgets' with: 'Glamour-Morphic-Widgets-TudorGirba.31';
			package: 'Glamour-Morphic-Renderer' with: 'Glamour-Morphic-Renderer-TudorGirba.139';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-TudorGirba.55';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-TudorGirba.83';
			package: 'Glamour-Examples' with: 'Glamour-Examples-TudorGirba.219';
			package: 'Glamour-Tools' with: 'Glamour-Tools-TudorGirba.50';
			
			package: 'Magritte-Model' with: 'Magritte-Model-NickAger.407';
			package: 'Magritte-Tests-Model' with: 'Magritte-Tests-Model-lr.16';
			package: 'Magritte-Morph' with: 'Magritte-Morph-EstebanLorenzano.57';
			package: 'Magritte-Pharo-Model' with:  'Magritte-Pharo-Model-lr.22';
			
			package: 'Glamour-Mondrian-Presentations' with: 'Glamour-Mondrian-Presentations-TudorGirba.4';
			package: 'Glamour-Magritte-Presentations' with: 'Glamour-Magritte-Presentations-TudorGirba.2';
			package: 'Glamour-EyeSee-Presentations' with: 'Glamour-EyeSee-Presentations-AndreHora.2';
			package: 'Glamour-Tests-Mondrian' with: 'Glamour-Tests-Mondrian-TudorGirba.5';
			package: 'Glamour-Tests-EyeSee' with: 'Glamour-Tests-EyeSee-AndreHora.6'.

		]