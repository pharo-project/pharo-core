baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'For version 1.0'.
		spec author: 'AndreiChis'.
		spec timestamp: '2014-09-22'.
		spec repository: 'http://smalltalkhub.com/mc/Moose/GToolkit/main/'.
		spec 
			project: 'GlamourCore' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: #'development';
					loads: #('Core' 'Core Tests' 'Morphic' );
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'GlamourExtras' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: #'development';
					loads: #('CoreExtras' 'Roassal' 'Roassal2' );
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'DeepTraverser' with: [
				spec
					className: #ConfigurationOfDeepTraverser;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Moose/DeepTraverser/main/' ].
		spec 
			package: #'GT-Inspector' with: [
				spec requires: #('GlamourCore' ). ];
			package: 'GT-InspectorExtensions-Core' with: [
				spec requires: #(#'GT-Inspector' 'GlamourCore' ). ];
			package: #'GT-InspectorExtensions-CoreRoassal' with: [
				spec requires: #(#'GT-Inspector' 'GlamourCore' 'GlamourExtras' ). ];
			package: 'GT-Tests-Inspector' with: [
				spec requires: #(#'GT-Inspector' 'GT-InspectorExtensions-Core' ). ].
		spec 
			group: 'Core' with: #(#'GT-Inspector' 'GT-InspectorExtensions-Core' );
			group: 'Tests' with: #(#'GT-Tests-Inspector' );
			group: 'default' with: #(#'GT-Inspector' 'GT-InspectorExtensions-Core' #'GT-InspectorExtensions-CoreRoassal' 'GT-Tests-Inspector' 'DeepTraverser' ). ].
