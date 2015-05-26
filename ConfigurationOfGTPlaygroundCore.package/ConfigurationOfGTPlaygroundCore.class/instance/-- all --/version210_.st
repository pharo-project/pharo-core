version210: spec
	<version: '2.1.0' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.1.0'.
		spec author: 'AndreiChis'.
		spec timestamp: '04/08/2015 22:11'.
		
		spec package: 'GT-Playground' with: 'GT-Playground-TudorGirba.109'.
		spec package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'.
		spec project: 'GTInspectorCore' with: '2.0.11'. ]
	
