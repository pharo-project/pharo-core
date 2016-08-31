version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Moose 6.0 release'.
		spec author: 'TudorGirba'.
		spec timestamp: '8/14/2016 22:10'.
		spec project: 'Ston' with: #'stable'.
		spec 
			package: #'GT-EventRecorder' with: 'GT-EventRecorder-JurajKubelka.71';
			package: 'GT-EventRecorder-Tests' with: 'GT-EventRecorder-Tests-JurajKubelka.37'. ].
