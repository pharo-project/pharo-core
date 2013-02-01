versions
version02: spec
	<version: '0.2' imports: #('2.0-baseline' )>

	spec for: #'pharo' do: [
		
		spec 
			blessing: #'development';
			description: '02 : Introduction of the builder';
			author: 'BenjaminVanRyseghem';
			timestamp: '2/28/2012 22:52'.
		
		spec 
			package: 'Spec-Builder' with:'Spec-Builder-BenjaminVanRyseghem.4';
			package: 'Spec-Core' with: 'Spec-Core-BenjaminVanRyseghem.8';
			package: 'Spec-Examples' with: 'Spec-Examples-BenjaminVanRyseghem.1';
			package: 'Spec-Tests' with: 'Spec-Tests-BenjaminVanRyseghem.2';
			package: 'Spec-Tools' with: 'Spec-Tools-BenjaminVanRyseghem.6';
			package: 'Spec-Widgets' with: 'Spec-Widgets-BenjaminVanRyseghem.5']