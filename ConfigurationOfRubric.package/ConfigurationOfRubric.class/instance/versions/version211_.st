version211: spec
	<version: '2.11' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.11'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '3/7/2016 14:20'.
		spec 
			package: 'Rubric' with: 'Rubric-HenrikNergaard.345';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
