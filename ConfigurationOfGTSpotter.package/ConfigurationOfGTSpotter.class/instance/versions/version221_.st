version221: spec
	<version: '2.21' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Glamour version 4.28 includes Glamour <--> Spec integration'.
		spec author: 'JurajKubelka'.
		spec timestamp: '12/27/2016 13:18'.
		spec 
			project: 'GlamourCore' with: '4.28';
			project: 'GTEventRecorder' with: '1.2'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-HenrikNergaard.405';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-TheIntegrator.218';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-TheIntegrator.27'. ].
