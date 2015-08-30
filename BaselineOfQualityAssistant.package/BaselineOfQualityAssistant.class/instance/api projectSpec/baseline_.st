baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #unstallObsoletePlugin;
				package: 'QualityAssistant' with: [ spec requires: 'Renraku' ];
				postLoadDoIt: #installPlugin.
			spec project: 'Renraku' with: [
  				spec
    					className: 'ConfigurationOfRenraku';
    					version: 'v0.6.0';
    					repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/Configuration/main' ] ]