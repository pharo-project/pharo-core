version323: spec
	<version: '3.23' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Adds some examples for GlamourPresentationModel'.
		spec author: 'JurajKubelka'.
		spec timestamp: '12/27/2016 13:01'.
		spec project: 'GlamourCore' with: '4.28'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-JurajKubelka.441';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-JurajKubelka.237';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.59'. ].
