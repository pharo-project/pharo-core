version29: spec
	<version: '2.9' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.9'.
		spec author: 'GuillermoPolito'.
		spec timestamp: '3/1/2016 09:47'.
		spec 
			package: 'Rubric' with: 'Rubric-GuillermoPolito.343';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
