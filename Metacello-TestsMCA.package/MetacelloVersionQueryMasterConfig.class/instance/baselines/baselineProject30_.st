baselineProject30: spec 
	<version: '3.0-baseline'>
	
	spec for: #common do: [
		spec
			project: 'XML' with: [
				spec
					className: 'MetacelloVersionQueryMiscConfig';
					versionString: '1.0-baseline';
					loads: #('Misc-XML') ];
			project: 'Project Core' with: [
				spec
					className: 'MetacelloVersionQueryProjectConfig';
					versionString: '2.1-baseline';
					loads: #('Core') ];
			project: 'Project Tests' with: [
				spec
					className: 'MetacelloVersionQueryProjectConfig';
					versionString: '2.1-baseline';
					loads: #('Tests') ].
		spec 
			package: 'Master-Core' with: [ 
				spec 
					includes: #('Master-Platform');
					requires: #('Project Core' 'XML') ];
			package: 'Master-Platform';
			package: 'Master-Tests' with: [ 
				spec requires: #('Master-Core' 'Project Tests') ].
		spec
			group: 'Core' with: #('Master-Core');
			group: 'Tests' with: #('Master-Tests').].
