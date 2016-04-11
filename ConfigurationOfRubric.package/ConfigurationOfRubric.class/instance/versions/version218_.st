version218: spec
	<version: '2.18' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'use strong announcements to local announcers'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '4/8/2016 17:00'.
		spec 
			package: 'Rubric' with: 'Rubric-PavelKrivanek.356';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
