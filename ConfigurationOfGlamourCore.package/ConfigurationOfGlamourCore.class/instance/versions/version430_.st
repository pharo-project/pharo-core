version430: spec
	<version: '4.30' imports: #('4.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Glamour version 4.30'.
		spec author: 'AndreiChis'.
		spec timestamp: '1/19/2017 20:18'.
		spec project: 'FastTable' with: '0.10.7'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-AndreiChis.8';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-TudorGirba.40';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-JurajKubelka.64';
			package: 'Glamour-Core' with: 'Glamour-Core-JurajKubelka.327';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-JurajKubelka.187';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-AndreiChis.112';
			package: 'Glamour-Examples' with: 'Glamour-Examples-AndreiChis.317';
			package: 'Glamour-Morphic-Brick' with: 'Glamour-Morphic-Brick-AndreiChis.436';
			package: 'Glamour-Morphic-Brick-Tests' with: 'Glamour-Morphic-Brick-Tests-JurajKubelka.15';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-PavelKrivanek.113';
			package: 'Glamour-Tests-Resources' with: 'Glamour-Tests-Resources-AndreiChis.5';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-TheIntegrator.229';
			package: 'Glamour-Morphic-Widgets' with: 'Glamour-Morphic-Widgets-TudorGirba.201';
			package: 'Glamour-Morphic-Renderer' with: 'Glamour-Morphic-Renderer-AndreiChis.354';
			package: 'Glamour-Morphic-Pager' with: 'Glamour-Morphic-Pager-MarcusDenker.111';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-TudorGirba.137';
			package: 'Glamour-Rubric-Presentations' with: 'Glamour-Rubric-Presentations-TheIntegrator.58';
			package: 'Glamour-Tests-Rubric' with: 'Glamour-Tests-Rubric-AndreiChis.36';
			package: 'Glamour-SpecIntegration' with: 'Glamour-SpecIntegration-JurajKubelka.4'. ].
