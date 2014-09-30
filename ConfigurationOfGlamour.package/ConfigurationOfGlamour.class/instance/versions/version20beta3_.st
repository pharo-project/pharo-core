version20beta3: spec
	<version: '2.0-beta.3' imports: #('2.0-beta.3-baseline')>

	spec for: #common do: [
		spec blessing: #stable.
		spec author: 'tg'.
		spec timestamp: '12/28/2009 21:29'.
		spec project: 'Mondrian for Glamour' with: '2.0-beta.3'.
		spec 
			package: 'Morphic-MorphTreeWidget' with: 'Morphic-MorphTreeWidget-AlainPlantec.46';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-tg.11';
			package: 'Glamour-Squeak' with: 'Glamour-Squeak-tg.7';
			package: 'Glamour-Core' with: 'Glamour-Core-tg.59';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-tg.53';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-tg.15';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-tg.47';
			package: 'Glamour-Tests' with: 'Glamour-Tests-tg.61';
			package: 'Glamour-Morphic' with: 'Glamour-Morphic-tg.204';
			package: 'Glamour-Test-Morphic' with: 'Glamour-Test-Morphic-tg.18';
			package: 'Glamour-Examples' with: 'Glamour-Examples-tg.97'.].