version224: spec
	<version: '2.24' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.26'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/11/2017 18:13'.
		spec 
			project: 'GlamourCore' with: '4.33';
			project: 'GTEventRecorder' with: '1.5'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-PavelKrivanek.407';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-TheIntegrator.221';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-VincentBlondeau.28'. ].
