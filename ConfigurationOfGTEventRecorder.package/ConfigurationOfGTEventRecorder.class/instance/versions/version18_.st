version18: spec
	<version: '1.8' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.37'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/28/2017 16:27'.
		spec project: 'Ston' with: '0.23'.
		spec 
			package: #'GT-EventRecorder' with: 'GT-EventRecorder-AndreiChis.80';
			package: 'GT-EventRecorder-Tests' with: 'GT-EventRecorder-Tests-TheIntegrator.40'. ].
