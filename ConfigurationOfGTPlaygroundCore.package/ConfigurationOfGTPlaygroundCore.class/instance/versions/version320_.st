version320: spec
	<version: '3.20' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.32'.
		spec author: 'AndreiChis'.
		spec timestamp: '12/27/2016 21:38'.
		spec project: 'GTInspectorCore' with: '3.24'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-JurajKubelka.137';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
