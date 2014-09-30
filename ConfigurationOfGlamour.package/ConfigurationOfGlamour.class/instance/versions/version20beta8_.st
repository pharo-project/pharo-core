version20beta8: spec
	<version: '2.0-beta.8' imports: #('2.0-beta.6-baseline')>

	spec for: #common do: [
		spec author: 'Alexandre Bergel'.
		spec timestamp: '12/2/2010 09:36'.
		spec description: 'Compatible with Pharo 1.1.1'.
		spec blessing: #development.
		spec project: 'Mondrian for Glamour' with: '2.1.2'.
		spec 
			package: 'Glamour-Announcements' with:  'Glamour-Announcements-tg.5';
			package: 'Glamour-Helpers' with:  'Glamour-Helpers-tg.23';
			package: 'Glamour-Core' with:  'Glamour-Core-tg.146';
			package: 'Glamour-Presentations'  with: 'Glamour-Presentations-tg.88';
			package: 'Glamour-Browsers'  with: 'Glamour-Browsers-tg.46';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-TudorGirba.100';
			package: 'Glamour-Tests-Core' with:  'Glamour-Tests-Core-TudorGirba.9';
			package: 'Glamour-Morphic-Renderer' with:  'Glamour-Morphic-Renderer-TudorGirba.21';
			package: 'Glamour-Morphic-Theme' with:  'Glamour-Morphic-Theme-tg.21';
			package: 'Glamour-Tests-Morphic' with:  'Glamour-Tests-Morphic-tg.4';
			package: 'Glamour-Examples' with:  'Glamour-Examples-TudorGirba.156';
			package: 'Glamour-Tools' with:  'Glamour-Tools-tg.23';
			package: 'Magritte-Model' with:  'Magritte-Model-lr.397';
			package: 'Magritte-Tests-Model' with:  'Magritte-Tests-Model-lr.13';
			package: 'Magritte-Morph' with:  'Magritte-Morph-lr.52';
			package: 'Magritte-Pharo-Model' with:  'Magritte-Pharo-Model-lr.22'.].