version216: spec
	<version: '2.16' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.27'.
		spec author: 'AndreiChis'.
		spec timestamp: '8/25/2016 14:40'.
		spec 
			project: 'GlamourCore' with: '4.21';
			project: 'GTEventRecorder' with: '1.1'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-StefanReichhart.402';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-StefanReichhart.216';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-StefanReichhart.20'. ].
