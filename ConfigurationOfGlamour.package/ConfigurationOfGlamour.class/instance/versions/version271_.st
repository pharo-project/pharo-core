version271: spec
	<version: '2.71' imports: #('2.91-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.71'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/30/2014 17:11'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-TudorGirba.7';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-AndreiChis.35';
			package: 'Glamour-Core' with: 'Glamour-Core-AndreiChis.277';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-TudorGirba.157';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-TudorGirba.104';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-AndreiChis.96';
			package: 'Glamour-Morphic-Widgets' with: [ 
				spec file: 'Glamour-Morphic-Widgets-AndreiChis.127'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'Glamour-Morphic-Renderer' with: [
				spec file: 'Glamour-Morphic-Renderer-AndreiChis.270'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'Glamour-Morphic-Pager' with: 'Glamour-Morphic-Pager-AliakseiSyrel.67';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-AndreiChis.180';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-AliakseiSyrel.115';
			package: 'Glamour-Examples' with: 'Glamour-Examples-StephanEggermont.284';
			package: 'Glamour-Rubric-Presentations' with: 'Glamour-Rubric-Presentations-AndreiChis.20';
			package: 'Glamour-Tests-Rubric' with: 'Glamour-Tests-Rubric-AndreiChis.13';
			package: 'Glamour-Tests-Resources' with: 'Glamour-Tests-Resources-AndreiChis.3'. ].

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.71'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/30/2014 17:11'.
		spec 
			project: 'Rubric' with: '1.2'. ].
