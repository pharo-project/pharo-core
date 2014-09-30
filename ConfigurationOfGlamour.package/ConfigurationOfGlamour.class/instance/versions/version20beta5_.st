version20beta5: spec
	<version: '2.0-beta.5' imports: #('2.0-beta.4-baseline')>

	spec for: #common do: [
		spec author: 'simon.denier'.
		spec timestamp: '3/31/2010 16:13'.
		spec blessing: #development.
		spec project: 'Mondrian for Glamour' with: '2.0-beta.6'.
		spec 
			package: 'Morphic-MorphTreeWidget' with: 'Morphic-MorphTreeWidget-AlainPlantec.88';
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-tg.3';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-tg.15';
			package: 'Glamour-Core' with: 'Glamour-Core-tg.113';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-tg.63';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-tg.37';
			package: 'Glamour-Scripting' with: 'Glamour-Scripting-tg.74';
			package: 'Glamour-Tests' with: 'Glamour-Tests-tg.124';
			package: 'Glamour-Morphic' with: 'Glamour-Morphic-tg.259';
			package: 'Glamour-Test-Morphic' with: 'Glamour-Test-Morphic-tg.57';
			package: 'Glamour-Examples' with: 'Glamour-Examples-tg.125';
			package: 'Glamour-Tools' with: 'Glamour-Tools-tg.21'.].