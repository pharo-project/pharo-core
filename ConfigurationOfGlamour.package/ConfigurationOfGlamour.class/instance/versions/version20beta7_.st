version20beta7: spec
	<version: '2.0-beta.7' imports: #('2.0-beta.5-baseline')>

	spec for: #common do: [
		spec author: 'jl'.
		spec timestamp: '09/13/2010 22:00'.
		spec blessing: #development.
		spec project: 'Mondrian for Glamour' with: '2.0-beta.8'.
		spec 
			package: 'Glamour-Announcements' with:  'Glamour-Announcements-tg.5';
			package: 'Glamour-Helpers' with:  'Glamour-Helpers-tg.20';
			package: 'Glamour-Core' with:  'Glamour-Core-tg.142';
			package: 'Glamour-Presentations'  with: 'Glamour-Presentations-tg.83';
			package: 'Glamour-Browsers'  with: 'Glamour-Browsers-tg.45';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-tg.91';
			package: 'Glamour-Tests-Core' with:  'Glamour-Tests-Core-tg.1';
			package: 'Glamour-Morphic-Renderer' with:  'Glamour-Morphic-Renderer-tg.5';
			package: 'Glamour-Morphic-Theme' with:  'Glamour-Morphic-Theme-tg.21';
			package: 'Glamour-Tests-Morphic' with:  'Glamour-Tests-Morphic-tg.3';
			package: 'Glamour-Examples' with:  'Glamour-Examples-tg.148';
			package: 'Glamour-Tools' with:  'Glamour-Tools-tg.22';
			package: 'Magritte-Model' with:  'Magritte-Model-lr.397';
			package: 'Magritte-Tests-Model' with:  'Magritte-Tests-Model-lr.13';
			package: 'Magritte-Morph' with:  'Magritte-Morph-lr.52';
			package: 'Magritte-Pharo-Model' with:  'Magritte-Pharo-Model-lr.22'.].