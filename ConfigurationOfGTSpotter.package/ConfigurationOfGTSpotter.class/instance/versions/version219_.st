version219: spec
	<version: '2.19' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Spotter version 2.19'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/4/2016 16:22'.
		spec 
			project: 'GlamourCore' with: '4.23';
			project: 'GTEventRecorder' with: '1.1'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-StefanReichhart.402';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-StefanReichhart.216';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-AndreiChis.23'. ].
