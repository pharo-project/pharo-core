version23: spec
	<version: '2.3' imports: #('2.2-baseline')>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'release for pharo 1.4'.
		spec author: 'GuillermoPolito'.
		spec timestamp: '2012-04-26T19:38:58.264+02:00'.

		spec 
			package: 'CollectionExtensions' with: 'CollectionExtensions-TudorGirba.29'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-TudorGirba.7';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-TudorGirba.32';
			package: 'Glamour-Core' with: 'Glamour-Core-TudorGirba.225';
			package: 'Glamour-Presentations'  with: 'Glamour-Presentations-EstebanLorenzano.111';
			package: 'Glamour-Browsers'  with: 'Glamour-Browsers-TudorGirba.90';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-TudorGirba.69';
			package: 'Glamour-Morphic-Widgets' with: 'Glamour-Morphic-Widgets-EstebanLorenzano.38';
			package: 'Glamour-Morphic-Renderer' with: 'Glamour-Morphic-Renderer-EstebanLorenzano.145';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-TudorGirba.56';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-TudorGirba.87';
			package: 'Glamour-Examples' with: 'Glamour-Examples-TudorGirba.235';
			package: 'Glamour-Tools' with: 'Glamour-Tools-TudorGirba.51';
			
			package: 'Magritte-Model' with: 'Magritte-Model-NickAger.407';
			package: 'Magritte-Tests-Model' with: 'Magritte-Tests-Model-lr.16';
			package: 'Magritte-Morph' with: 'Magritte-Morph-EstebanLorenzano.57';
			package: 'Magritte-Pharo-Model' with:  'Magritte-Pharo-Model-lr.22';
			
			package: 'Glamour-Mondrian-Presentations' with: 'Glamour-Mondrian-Presentations-TudorGirba.4';
			package: 'Glamour-Magritte-Presentations' with: 'Glamour-Magritte-Presentations-BenComan.3';
			package: 'Glamour-EyeSee-Presentations' with: 'Glamour-EyeSee-Presentations-AndreHora.2';
			package: 'Glamour-Tests-Mondrian' with: 'Glamour-Tests-Mondrian-TudorGirba.5';
			package: 'Glamour-Tests-EyeSee' with: 'Glamour-Tests-EyeSee-AndreHora.6'.


	]