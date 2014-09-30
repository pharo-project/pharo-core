version20beta1: spec
	<version: '2.0-beta.1' imports: #('2.0-beta.1-baseline')>

	spec for: #common do: [
		spec blessing: #stable.
		spec author: 'tg'.
		spec timestamp: '11/21/2009 23:06'.
		spec project: 'Mondrian for Glamour' with: '2.0-beta.1'.
		spec 
			package: 'Morphic-MorphTreeWidget' with: 'Morphic-MorphTreeWidget-AlainPlantec.17';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-tg.11';
			package: 'Glamour-Squeak' with: 'Glamour-Squeak-tg.7';
			package: 'Glamour-Core' with: 'Glamour-Core-tg.51';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-VeronicaUquillas.51';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-tg.14';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-tg.44';
			package: 'Glamour-Tests' with: 'Glamour-Tests-tg.53';
			package: 'Glamour-Morphic' with: 'Glamour-Morphic-VeronicaUquillas.194';
			package: 'Glamour-Test-Morphic' with: 'Glamour-Test-Morphic-tg.11';
			package: 'Glamour-Examples' with: 'Glamour-Examples-simondenier.89'.].