version105: spec
	<version: '1.0.5' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.5'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/03/2014 17:06'.
		spec 
			project: 'GlamourCore' with: '2.74'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-TudorGirba.241';
			package: 'GT-InspectorExtensions-Core' with: [ 
				spec file: 'GT-InspectorExtensions-Core-AndreiChis.61'.
				spec repository: 'http://www.smalltalkhub.com/mc/PharoExtras/GTToolsIntegration/main' ];
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
