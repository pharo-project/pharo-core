version215: spec
	<version: '2.15' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Prevent infinite loop in GLMScrollListBrick>>#preventOverscrolling
 - in some cases it was moving band to the top and to the bottom.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/21/2016 18:06'.
		spec 
			project: 'GlamourCore' with: '4.20';
			project: 'GTEventRecorder' with: '0.19'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-JurajKubelka.401';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-JurajKubelka.213';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-AndreiChis.19'. ].
