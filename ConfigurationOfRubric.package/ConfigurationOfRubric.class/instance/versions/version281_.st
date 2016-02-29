version281: spec
	<version: '2.8.1' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.8.1'.
		spec author: 'YuriyTymchuk'.
		spec timestamp: '2/25/2016 17:06'.
		spec 
			package: 'Rubric' with: 'Rubric-NicolaiHess.340';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
