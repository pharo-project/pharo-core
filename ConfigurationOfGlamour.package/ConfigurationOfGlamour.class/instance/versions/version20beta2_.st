version20beta2: spec
	<version: '2.0-beta.2' imports: #('2.0-beta.2-baseline')>

	spec for: #common do: [
		spec blessing: #stable.
		spec author: 'tg'.
		spec timestamp: '12/18/2009 19:13'.
		spec project: 'Mondrian for Glamour' with: '2.0-beta.1'.
		spec 
			package: 'Morphic-MorphTreeWidget' with: 'Morphic-MorphTreeWidget-AlainPlantec.39';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-tg.11';
			package: 'Glamour-Squeak' with: 'Glamour-Squeak-tg.7';
			package: 'Glamour-Core' with: 'Glamour-Core-tg.55';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-tg.52';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-tg.15';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-tg.46';
			package: 'Glamour-Tests' with: 'Glamour-Tests-tg.59';
			package: 'Glamour-Morphic' with: 'Glamour-Morphic-tg.203';
			package: 'Glamour-Test-Morphic' with: 'Glamour-Test-Morphic-tg.18';
			package: 'Glamour-Examples' with: 'Glamour-Examples-tg.95'.].