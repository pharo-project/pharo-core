baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #preLoadDoIt;
				package: 'QualityAssistant' with: [ spec requires: 'Renraku' ];
				package: 'QualityAssistantRecording' with: [ spec requires: 'QualityAssistant' ];
				postLoadDoIt: #installPlugin.
			spec project: 'Renraku' with: [
  				spec
    					className: 'ConfigurationOfRenraku';
    					version: 'v0.12.2';
    					repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/Configuration/main' ] ]