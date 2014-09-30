version24: spec
	<version: '2.4' imports: #('2.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '-updated to Pharo 1.4 
-using latest versions'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '6/3/2012 13:40'.
		spec 
			project: 'Mondrian for Glamour' with: '2.157';
			project: 'EyeSee for Glamour' with: '0.9.8';
			project: 'Grease' with: #'stable'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-TudorGirba.7';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-TudorGirba.32';
			package: 'Glamour-Core' with: 'Glamour-Core-TudorGirba.230';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-EstebanLorenzano.111';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-TudorGirba.93';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-TudorGirba.73';
			package: 'Glamour-Morphic-Widgets' with: 'Glamour-Morphic-Widgets-TudorGirba.52';
			package: 'Glamour-Morphic-Renderer' with: 'Glamour-Morphic-Renderer-TudorGirba.159';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-TudorGirba.60';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-TudorGirba.92';
			package: 'Glamour-Examples' with: 'Glamour-Examples-TudorGirba.239';
			package: 'Glamour-Tools' with: 'Glamour-Tools-TudorGirba.55';
			package: 'Magritte-Model' with: 'Magritte-Model-AvO.408';
			package: 'Magritte-Tests-Model' with: 'Magritte-Tests-Model-AvO.17';
			package: 'Magritte-Morph' with: 'Magritte-Morph-EstebanLorenzano.57';
			package: 'Magritte-Pharo-Model' with: 'Magritte-Pharo-Model-lr.22';
			package: 'Glamour-Mondrian-Presentations' with: 'Glamour-Mondrian-Presentations-TudorGirba.4';
			package: 'Glamour-Magritte-Presentations' with: 'Glamour-Magritte-Presentations-BenComan.3';
			package: 'Glamour-EyeSee-Presentations' with: 'Glamour-EyeSee-Presentations-AndreHora.2';
			package: 'Glamour-Tests-Mondrian' with: 'Glamour-Tests-Mondrian-TudorGirba.5';
			package: 'Glamour-Tests-EyeSee' with: 'Glamour-Tests-EyeSee-AndreHora.6' ].
	spec for: #squeakCommon do: [ 
		spec 
			package: 'CollectionExtensions' with: 'CollectionExtensions-TudorGirba.32' ].
