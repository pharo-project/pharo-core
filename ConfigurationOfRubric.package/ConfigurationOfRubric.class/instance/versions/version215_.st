version215: spec
	<version: '2.15' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.15'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '3/29/2016 13:28'.
		spec 
			package: 'Rubric' with: 'Rubric-HenrikNergaard.353';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
