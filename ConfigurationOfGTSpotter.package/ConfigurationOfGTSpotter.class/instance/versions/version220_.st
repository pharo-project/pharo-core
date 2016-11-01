version220: spec
	<version: '2.20' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.30'.
		spec author: 'AndreiChis'.
		spec timestamp: '11/1/2016 11:15'.
		spec 
			project: 'GlamourCore' with: '4.24';
			project: 'GTEventRecorder' with: '1.2'.
		spec 
			package: 'GT-Spotter' with: 'GT-Spotter-HenrikNergaard.405';
			package: 'GT-Spotter-EventRecorder' with: 'GT-Spotter-EventRecorder-JurajKubelka.113';
			package: 'GT-SpotterExtensions-Core' with: 'GT-SpotterExtensions-Core-StefanReichhart.216';
			package: 'GT-Tests-Spotter' with: 'GT-Tests-Spotter-AndreiChis.23'. ].
