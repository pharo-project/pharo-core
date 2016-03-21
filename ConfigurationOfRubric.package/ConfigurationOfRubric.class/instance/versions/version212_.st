version212: spec
	<version: '2.12' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.12'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '3/19/2016 14:27'.
		spec 
			package: 'Rubric' with: 'Rubric-HenrikNergaard.348';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
