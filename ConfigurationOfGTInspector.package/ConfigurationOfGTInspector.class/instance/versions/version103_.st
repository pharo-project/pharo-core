version103: spec
	<version: '1.0.3' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.3'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/30/2014 14:52'.
		spec 
			project: 'GlamourCore' with: '2.72'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-TudorGirba.239';
			package: 'GT-InspectorExtensions-Core' with: [ 
				spec file: 'GT-InspectorExtensions-Core-AndreiChis.56'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
