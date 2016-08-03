version420: spec
	<version: '4.20' imports: #('3.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Prevent infinite loop in GLMScrollListBrick>>#preventOverscrolling
 - in some cases it was moving band to the top and to the bottom.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/21/2016 18:05'.
		spec project: 'FastTable' with: #stable.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-AndreiChis.8';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-TudorGirba.40';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-AndreiChis.59';
			package: 'Glamour-Core' with: 'Glamour-Core-EstebanLorenzano.323';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-AndreiChis.186';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-AndreiChis.112';
			package: 'Glamour-Examples' with: 'Glamour-Examples-TheIntegrator.309';
			package: 'Glamour-Morphic-Brick' with: 'Glamour-Morphic-Brick-JurajKubelka.429';
			package: 'Glamour-Morphic-Brick-Tests' with: 'Glamour-Morphic-Brick-Tests-JurajKubelka.15';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-PavelKrivanek.113';
			package: 'Glamour-Tests-Resources' with: 'Glamour-Tests-Resources-AndreiChis.5';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-TheIntegrator.224';
			package: 'Glamour-Morphic-Widgets' with: 'Glamour-Morphic-Widgets-EstebanLorenzano.197';
			package: 'Glamour-Morphic-Renderer' with: 'Glamour-Morphic-Renderer-EstebanLorenzano.350';
			package: 'Glamour-Morphic-Pager' with: 'Glamour-Morphic-Pager-GuillermoPolito.110';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-TudorGirba.137';
			package: 'Glamour-Rubric-Presentations' with: 'Glamour-Rubric-Presentations-TheIntegrator.54';
			package: 'Glamour-Tests-Rubric' with: 'Glamour-Tests-Rubric-AndreiChis.35'. ].
