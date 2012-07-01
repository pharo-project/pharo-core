actions
refresh
	|repo reductionMap split configName  author version last topMostItems item |		
	"Set as list contents"	
	trustedTree list: (self retrieveConfigurationMorphsFrom: self pharoDistribution).
	untrustedTree list: (self retrieveConfigurationMorphsFrom: self untrustedDistribution).
	window title: self pharoDistribution.