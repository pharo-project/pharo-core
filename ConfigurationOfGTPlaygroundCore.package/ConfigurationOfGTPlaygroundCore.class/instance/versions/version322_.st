version322: spec
	<version: '3.22' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.26'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/11/2017 18:13'.
		spec project: 'GTInspectorCore' with: '3.26'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-AndreiChis.140';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
