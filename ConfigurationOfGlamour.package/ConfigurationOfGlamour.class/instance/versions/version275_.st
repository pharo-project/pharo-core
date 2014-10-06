version275: spec
	<version: '2.75' imports: #('2.92-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.75'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/06/2014 11:21'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-AndreiChis.8';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-AndreiChis.36';
			package: 'Glamour-Core' with: 'Glamour-Core-AndreiChis.280';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-AndreiChis.159';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-AndreiChis.106';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-AndreiChis.96';
			package: 'Glamour-Morphic-Widgets' with: 'Glamour-Morphic-Widgets-AndreiChis.134';
			package: 'Glamour-Morphic-Renderer' with: [
				spec file: 'Glamour-Morphic-Renderer-AndreiChis.282'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'Glamour-Morphic-Pager' with: 'Glamour-Morphic-Pager-AliakseiSyrel.69';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-AndreiChis.181';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-AliakseiSyrel.115';
			package: 'Glamour-Examples' with: 'Glamour-Examples-StephanEggermont.284';
			package: 'Glamour-Rubric-Presentations' with: 'Glamour-Rubric-Presentations-AndreiChis.29';
			package: 'Glamour-Tests-Rubric' with: 'Glamour-Tests-Rubric-AndreiChis.14';
			package: 'Glamour-Tests-Resources' with: 'Glamour-Tests-Resources-AndreiChis.3'. ].

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.75'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/06/2014 11:21'.
		spec 
			project: 'Rubric' with: '1.2.2'. ].
