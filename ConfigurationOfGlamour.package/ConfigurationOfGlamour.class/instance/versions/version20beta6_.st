version20beta6: spec
	<version: '2.0-beta.6' imports: #('2.0-beta.4-baseline')>

	spec for: #common do: [
		spec author: 'jannik.laval'.
		spec timestamp: '6/1/2010 22:59'.
		spec blessing: #development.
		spec project: 'Mondrian for Glamour' with: '2.0-beta.7'.
		spec 
			package: 'Morphic-MorphTreeWidget' with: 'Morphic-MorphTreeWidget-AlainPlantec.88';
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-tg.4';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-FabrizioPerin.19';
			package: 'Glamour-Core' with: 'Glamour-Core-tg.131';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-VeronicaUquillas.79';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-Alexandre_Bergel.40';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-VeronicaUquillas.89';
			package: 'Glamour-Tests' with: 'Glamour-Tests-tg.143';
			package: 'Glamour-Morphic' with: 'Glamour-Morphic-VeronicaUquillas.282';
			package: 'Glamour-Test-Morphic' with: 'Glamour-Test-Morphic-tg.72';
			package: 'Glamour-Examples' with: 'Glamour-Examples-VeronicaUquillas.142';
			package: 'Glamour-Tools' with: 'Glamour-Tools-tg.22'.].