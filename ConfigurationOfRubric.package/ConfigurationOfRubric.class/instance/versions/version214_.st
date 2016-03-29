version214: spec
	<version: '2.14' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.14'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '3/29/2016 13:26'.
		spec 
			package: 'Rubric' with: 'Rubric-HenrikNergaard.353';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
