baseline23: spec
	<version: '2.3-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Pharo/Rubric/main/'.
		spec 
			package: 'Rubric';
			package: #'Rubric-Styling' with: [
				spec requires: #('Rubric' ). ];
			package: #'Rubric-Rules' with: [
				spec requires: #('Rubric' ). ]. 
		
		spec
			group: 'default' with: #('Rubric' 'Rubric-Styling'  'Rubric-Styling');
			group: 'Core' with: #('Rubric').
		].	
