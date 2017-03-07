version17: spec
	<version: '1.7' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.36'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/6/2017 14:09'.
		spec project: 'Ston' with: '0.23'.
		spec 
			package: #'GT-EventRecorder' with: 'GT-EventRecorder-AndreiChis.80';
			package: 'GT-EventRecorder-Tests' with: 'GT-EventRecorder-Tests-TheIntegrator.40'. ].
