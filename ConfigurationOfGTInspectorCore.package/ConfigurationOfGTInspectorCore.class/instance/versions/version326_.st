version326: spec
	<version: '3.26' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.26'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/11/2017 18:13'.
		spec project: 'GlamourCore' with: '4.33'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-AndreiChis.450';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.250';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.59'. ].
