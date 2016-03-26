version213: spec
	<version: '2.13' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.13'.
		spec author: 'AliakseiSyrel'.
		spec timestamp: '3/23/2016 00:24'.
		spec 
			package: 'Rubric' with: 'Rubric-AliakseiSyrel.350';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
