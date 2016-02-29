baseline22: spec
	<version: '2.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Pharo/Rubric/main/'.
		spec 
			package: 'Rubric';
			package: #'Rubric-Rules' with: [
				spec requires: #('Rubric' ). ]. ].
