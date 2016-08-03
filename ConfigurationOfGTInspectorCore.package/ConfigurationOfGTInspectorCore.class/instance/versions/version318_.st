version318: spec
	<version: '3.18' imports: #('2.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Prevent infinite loop in GLMScrollListBrick>>#preventOverscrolling
 - in some cases it was moving band to the top and to the bottom.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/21/2016 18:05'.
		spec project: 'GlamourCore' with: '4.20'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-JurajKubelka.434';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-JurajKubelka.225';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-JurajKubelka.57'. ].
