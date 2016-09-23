version217: spec
	<version: '2.17' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.28'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/22/2016 23:31'.
		spec 
			project: 'GlamourCore' with: '4.22';
			project: 'GTEventRecorder' with: '1.1'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-StefanReichhart.402';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-StefanReichhart.216';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-StefanReichhart.20'. ].
