version120: spec
	<version: '1.20' imports: #('0.7-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.20'.
		spec author: 'ChristopheDemarey'.
		spec timestamp: '9/19/2016 10:44'.
		spec 
			project: 'MooseAlgos' with: '2.5-baseline';
			project: 'NeoJSON' with: '13'.
		spec 
			package: #'Tool-DependencyAnalyser' with: 'Tool-DependencyAnalyser-ChristopheDemarey.31';
			package: #'Tool-DependencyAnalyser-HTMLReport' with: #'Tool-DependencyAnalyser-HTMLReport-ChristopheDemarey.1';
			package: #'Tool-DependencyAnalyser-Test' with: 'Tool-DependencyAnalyser-Test-ChristopheDemarey.15';
			package: 'Tool-DependencyAnalyser-Test-Data' with: 'Tool-DependencyAnalyser-Test-Data-ChristopheDemarey.2';
			package: #'Tool-DependencyAnalyser-UI' with: 'Tool-DependencyAnalyser-UI-ChristopheDemarey.54'. ].
