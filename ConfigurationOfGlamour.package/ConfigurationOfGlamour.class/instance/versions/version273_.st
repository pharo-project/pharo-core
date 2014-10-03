version273: spec
	<version: '2.73' imports: #('2.91-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.73'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/02/2014 18:16'.
		spec 
			package: 'Glamour-Announcements' with: 'Glamour-Announcements-TudorGirba.7';
			package: 'Glamour-Helpers' with: 'Glamour-Helpers-AndreiChis.36';
			package: 'Glamour-Core' with: 'Glamour-Core-AndreiChis.277';
			package: 'Glamour-Presentations' with: 'Glamour-Presentations-AndreiChis.158';
			package: 'Glamour-Browsers' with: 'Glamour-Browsers-TudorGirba.104';
			package: 'Glamour-Tests-Core' with: 'Glamour-Tests-Core-AndreiChis.96';
			package: 'Glamour-Morphic-Widgets' with: [ 
				spec file: 'Glamour-Morphic-Widgets-AndreiChis.128'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'Glamour-Morphic-Renderer' with: [
				spec file: 'Glamour-Morphic-Renderer-AndreiChis.272'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'Glamour-Morphic-Pager' with: 'Glamour-Morphic-Pager-AliakseiSyrel.67';
			package: 'Glamour-Morphic-Theme' with: 'Glamour-Morphic-Theme-AndreiChis.181';
			package: 'Glamour-Tests-Morphic' with: 'Glamour-Tests-Morphic-AliakseiSyrel.115';
			package: 'Glamour-Examples' with: 'Glamour-Examples-StephanEggermont.284';
			package: 'Glamour-Rubric-Presentations' with: 'Glamour-Rubric-Presentations-AndreiChis.23';
			package: 'Glamour-Tests-Rubric' with: 'Glamour-Tests-Rubric-AndreiChis.14';
			package: 'Glamour-Tests-Resources' with: 'Glamour-Tests-Resources-AndreiChis.3'. ].

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.73'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/02/2014 18:16'.
		spec 
			project: 'Rubric' with: '1.2.1'. ].
