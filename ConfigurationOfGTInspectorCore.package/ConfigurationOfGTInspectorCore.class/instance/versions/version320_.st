version320: spec
	<version: '3.20' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.28'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/22/2016 23:31'.
		spec project: 'GlamourCore' with: '4.22'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-StefanReichhart.436';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-MarcusDenker.228';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.59'. ].
