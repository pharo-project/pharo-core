version227: spec
	<version: '2.27' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.37'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/28/2017 16:27'.
		spec 
			project: 'GlamourCore' with: '4.37';
			project: 'GTEventRecorder' with: '1.8'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-AliakseiSyrel.412';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-AndreiChis.114';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-TheIntegrator.224';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-AndreiChis.31'. ].
