version210: spec
	<version: '2.10' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.10'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '3/7/2016 13:11'.
		spec 
			package: 'Rubric' with: 'Rubric-HenrikNergaard.344';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
