version16: spec
	<version: '1.6' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.35'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/20/2017 16:30'.
		spec project: 'Ston' with: '0.23'.
		spec 
			package: #'GT-EventRecorder' with: 'GT-EventRecorder-AndreiChis.80';
			package: 'GT-EventRecorder-Tests' with: 'GT-EventRecorder-Tests-TheIntegrator.40'. ].
