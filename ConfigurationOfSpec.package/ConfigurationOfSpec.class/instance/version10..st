versions
version10: spec
	<version: '1.0' imports: #('4.0-baseline' )>

	spec for: #'pharo' do: [
		
		spec 
			blessing: #'development';
			description: '1.0 : Modification according to the IWST paper';
			author: 'BenjaminVanRyseghem';
			timestamp: '6/21/2012 10:56'.
		
		spec 
			package: 'Spec-Bindings' with: 'Spec-Bindings-bvr.6';
			package: 'Spec-Builder' with:'Spec-Builder-BenjaminVanRyseghem.8';
			package: 'Spec-Core' with: 'Spec-Core-BenjaminVanRyseghem.40';
			package: 'Spec-Examples' with: 'Spec-Examples-BenjaminVanRyseghem.7';
			package: 'Spec-Layout' with: 'Spec-Layout-BenjaminVanRyseghem.10';
			package: 'Spec-Tests' with: 'Spec-Tests-BenjaminVanRyseghem.11';
			package: 'Spec-Tools' with: 'Spec-Tools-BenjaminVanRyseghem.31';
			package: 'Spec-Widgets' with: 'Spec-Widgets-BenjaminVanRyseghem.42']