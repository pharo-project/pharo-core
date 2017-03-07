version226: spec
	<version: '2.26' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.36'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/6/2017 14:09'.
		spec 
			project: 'GlamourCore' with: '4.36';
			project: 'GTEventRecorder' with: '1.7'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-TheIntegrator.411';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-AndreiChis.114';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-TheIntegrator.222';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-TheIntegrator.30'. ].
