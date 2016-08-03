version317: spec
	<version: '3.17' imports: #('2.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Stable version for Pharo 5.0.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/14/2016 13:47'.
		spec project: 'GlamourCore' with: '4.19'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-AndreiChis.421';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-TheIntegrator.214';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.56'. ].
