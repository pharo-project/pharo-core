baseline07: spec
	<version: '0.7-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/PharoExtras/Tool-DependencyAnalyser/main/'.
		spec 
			project: 'MooseAlgos' with: [
				spec
					className: #ConfigurationOfMooseAlgos;
					versionString: #'bleedingEdge';
					loads: #('Moose-Algos-Graph' );
					repository: 'http://smalltalkhub.com/mc/Moose/MooseAlgos/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: #'stable';
					repository: 'http://mc.stfx.eu/Neo' ].
		spec 
			package: #'Tool-DependencyAnalyser' with: [
				spec requires: #('MooseAlgos' ). ];
			package: #'Tool-DependencyAnalyser-HTMLReport' with: [
				spec requires: #(#'Tool-DependencyAnalyser' 'NeoJSON' ). ];
			package: #'Tool-DependencyAnalyser-Test' with: [
				spec requires: #(#'Tool-DependencyAnalyser' 'Tool-DependencyAnalyser-Test-Data' ). ];
			package: 'Tool-DependencyAnalyser-Test-Data';
			package: #'Tool-DependencyAnalyser-UI' with: [
				spec requires: #(#'Tool-DependencyAnalyser' ). ].
		spec 
			group: 'default' with: #(#'Tool-DependencyAnalyser' #'Tool-DependencyAnalyser-UI' #'Tool-DependencyAnalyser-Test' );
			group: 'html-report' with: #('default' #'Tool-DependencyAnalyser-HTMLReport' ). ].
