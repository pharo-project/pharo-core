version425: spec
	<version: '4.25' imports: #('4.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'fix bug from last version in GLMSystemWindow >> #keyStroke'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '11/1/2016 22:00'.
		spec project: 'FastTable' with: '0.10.5'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-AndreiChis.8';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-TudorGirba.40';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-PabloTesone.60';
			package: 'Glamour-Core' with: 'Glamour-Core-TheIntegrator.326';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-AndreiChis.186';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-AndreiChis.112';
			package: 'Glamour-Examples' with: 'Glamour-Examples-TheIntegrator.313';
			package: 'Glamour-Morphic-Brick' with: 'Glamour-Morphic-Brick-TheIntegrator.433';
			package: 'Glamour-Morphic-Brick-Tests' with: 'Glamour-Morphic-Brick-Tests-JurajKubelka.15';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-PavelKrivanek.113';
			package: 'Glamour-Tests-Resources' with: 'Glamour-Tests-Resources-AndreiChis.5';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-TheIntegrator.229';
			package: 'Glamour-Morphic-Widgets' with: 'Glamour-Morphic-Widgets-HenrikNergaard.199';
			package: 'Glamour-Morphic-Renderer' with: 'Glamour-Morphic-Renderer-TudorGirba.352';
			package: 'Glamour-Morphic-Pager' with: 'Glamour-Morphic-Pager-MarcusDenker.111';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-TudorGirba.137';
			package: 'Glamour-Rubric-Presentations' with: 'Glamour-Rubric-Presentations-TheIntegrator.58';
			package: 'Glamour-Tests-Rubric' with: 'Glamour-Tests-Rubric-AndreiChis.35'. ].
