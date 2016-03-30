version216: spec
	<version: '2.16' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fix usage of non weak subscription. 
Fix issue in #extent: where using floats causes infinite loops'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '3/29/2016 14:21'.
		spec 
			package: 'Rubric' with: 'Rubric-HenrikNergaard.354';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
