version319: spec
	<version: '3.19' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.27'.
		spec author: 'AndreiChis'.
		spec timestamp: '8/25/2016 14:40'.
		spec project: 'GlamourCore' with: '4.21'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-StefanReichhart.436';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-TudorGirba.227';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.59'. ].
