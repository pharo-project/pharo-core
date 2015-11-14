baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #preLoadDoIt;
				package: 'QualityAssistant' with: [ spec requires: 'Renraku' ];
				postLoadDoIt: #installPlugin.
			spec project: 'Renraku' with: [
  				spec
    					className: 'ConfigurationOfRenraku';
    					version: 'v0.8.2';
    					repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/Configuration/main' ] ]