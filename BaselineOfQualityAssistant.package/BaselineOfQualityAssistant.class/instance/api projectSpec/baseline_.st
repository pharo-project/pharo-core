baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'QualityAssistant' with: [ spec requires: 'Renraku' ];
				postLoadDoIt: #installPlugin.
			spec project: 'Renraku' with: [
  				spec
    					className: 'ConfigurationOfRenraku';
    					version: 'v0.3.3';
    					repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/Configuration/main' ] ]