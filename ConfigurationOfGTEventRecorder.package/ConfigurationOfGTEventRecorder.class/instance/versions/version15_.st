version15: spec
	<version: '1.5' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.26'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/11/2017 18:13'.
		spec project: 'Ston' with: '0.23'.
		spec 
			package: #'GT-EventRecorder' with: 'GT-EventRecorder-TheIntegrator.77';
			package: 'GT-EventRecorder-Tests' with: 'GT-EventRecorder-Tests-TheIntegrator.40'. ].
