version14: spec
	<version: '1.4' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.33'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/3/2017 18:29'.
		spec project: 'Ston' with: '0.19'.
		spec 
			package: #'GT-EventRecorder' with: 'GT-EventRecorder-AndreiChis.74';
			package: 'GT-EventRecorder-Tests' with: 'GT-EventRecorder-Tests-TheIntegrator.39'. ].
