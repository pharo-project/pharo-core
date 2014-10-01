version103: spec
	<version: '1.0.3' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.3 bug fixing'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/01/2014 14:52'.
		spec project: 'GTInspector' with: '1.0.3'.
		spec package: 'GT-Playground' with: [  
			spec file: 'GT-Playground-AndreiChis.36'.
			spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ] ]
