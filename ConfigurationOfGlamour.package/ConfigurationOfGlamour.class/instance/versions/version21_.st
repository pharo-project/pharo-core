version21: spec
	<version: '2.1' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'New version'.
		spec author: 'AlexandreBergel'.
		spec timestamp: '2/17/2011 10:45'.
		spec 
			project: 'Shout' with: '1.2.2';
			project: 'Mondrian for Glamour' with: '2.49';
			project: 'Grease' with: '1.0.3.1'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-tg.5';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-TudorGirba.25';
			package: 'Glamour-Core' with: 'Glamour-Core-TudorGirba.159';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-TudorGirba.90';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-TudorGirba.55';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-TudorGirba.112';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-TudorGirba.23';
			package: 'Glamour-Morphic-Renderer' with: 'Glamour-Morphic-Renderer-TudorGirba.70';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-TudorGirba.38';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-TudorGirba.27';
			package: 'Glamour-Examples' with: 'Glamour-Examples-TudorGirba.162';
			package: 'Glamour-Tools' with: 'Glamour-Tools-tg.23';
			package: 'Magritte-Model' with: 'Magritte-Model-lr.404';
			package: 'Magritte-Tests-Model' with: 'Magritte-Tests-Model-lr.16';
			package: 'Magritte-Morph' with: 'Magritte-Morph-lr.53';
			package: 'Magritte-Pharo-Model' with: 'Magritte-Pharo-Model-lr.22';
			package: 'Glamour-Mondrian-Presentations' with: 'Glamour-Mondrian-Presentations-TudorGirba.2';
			package: 'Glamour-Magritte-Presentations' with: 'Glamour-Magritte-Presentations-tg.1';
			package: 'Glamour-Tests-Mondrian' with: 'Glamour-Tests-Mondrian-TudorGirba.4'. ].
