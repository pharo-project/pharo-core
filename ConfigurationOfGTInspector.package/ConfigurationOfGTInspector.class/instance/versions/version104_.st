version104: spec
	<version: '1.0.4' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.4'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/02/2014 18:16'.
		spec 
			project: 'GlamourCore' with: '2.73'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-TudorGirba.239';
			package: 'GT-InspectorExtensions-Core' with: [ 
				spec file: 'GT-InspectorExtensions-Core-AndreiChis.57'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
