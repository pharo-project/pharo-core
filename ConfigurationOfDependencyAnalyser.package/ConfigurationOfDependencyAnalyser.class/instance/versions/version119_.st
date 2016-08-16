version119: spec
	<version: '1.19' imports: #('0.7-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.19'.
		spec author: 'ChristopheDemarey'.
		spec timestamp: '8/12/2016 10:31'.
		spec 
			project: 'MooseAlgos' with: '2.5-baseline';
			project: 'NeoJSON' with: '13'.
		spec 
			package: #'Tool-DependencyAnalyser' with: 'Tool-DependencyAnalyser-ChristopheDemarey.31';
			package: #'Tool-DependencyAnalyser-HTMLReport' with: #'Tool-DependencyAnalyser-HTMLReport-ChristopheDemarey.1';
			package: #'Tool-DependencyAnalyser-Test' with: 'Tool-DependencyAnalyser-Test-ChristopheDemarey.13';
			package: 'Tool-DependencyAnalyser-Test-Data' with: 'Tool-DependencyAnalyser-Test-Data-ChristopheDemarey.1';
			package: #'Tool-DependencyAnalyser-UI' with: 'Tool-DependencyAnalyser-UI-ChristopheDemarey.48'. ].
