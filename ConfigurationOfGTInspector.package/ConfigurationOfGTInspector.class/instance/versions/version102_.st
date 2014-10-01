version102: spec
	<version: '1.0.2' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.2'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/30/2014 20:55'.
		spec 
			project: 'GlamourCore' with: '2.71'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-TudorGirba.239';
			package: 'GT-InspectorExtensions-Core' with: [ 
				spec file: 'GT-InspectorExtensions-Core-AndreiChis.56'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
