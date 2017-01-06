version222: spec
	<version: '2.22' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.32'.
		spec author: 'AndreiChis'.
		spec timestamp: '12/27/2016 21:38'.
		spec 
			project: 'GlamourCore' with: '4.29';
			project: 'GTEventRecorder' with: '1.3'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-PavelKrivanek.407';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-AndreiChis.219';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-TheIntegrator.27'. ].
