version225: spec
	<version: '2.25' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.35'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/20/2017 16:30'.
		spec 
			project: 'GlamourCore' with: '4.35';
			project: 'GTEventRecorder' with: '1.6'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-AndreiChis.409';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-AndreiChis.114';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-TheIntegrator.221';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-VincentBlondeau.28'. ].
