version223: spec
	<version: '2.23' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.33'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/3/2017 18:30'.
		spec 
			project: 'GlamourCore' with: '4.32';
			project: 'GTEventRecorder' with: '1.4'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-PavelKrivanek.407';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-TheIntegrator.221';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-VincentBlondeau.28'. ].
