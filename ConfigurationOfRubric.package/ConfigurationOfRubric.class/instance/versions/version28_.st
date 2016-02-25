version28: spec
	<version: '2.8' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.8'.
		spec author: 'NicolaiHess'.
		spec timestamp: '2/24/2016 22:36'.
		spec 
			package: 'Rubric' with: 'Rubric-NicolaiHess.340';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.1'. ].
