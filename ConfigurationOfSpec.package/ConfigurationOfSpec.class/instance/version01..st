versions
version01: spec
	<version: '0.1' imports: #('1.0-baseline' )>

	spec for: #'pharo' do: [
		
		spec 
			blessing: #'development';
			description: '01 : First C0nfiguration';
			author: 'BenjaminVanRyseghem';
			timestamp: '2/23/2012 18:33'.
		
		spec 
			package: 'Spec-Examples' with: 'Spec-Examples-BenjaminVanRyseghem.1';
			package: 'Spec-Core' with: 'Spec-Core-BenjaminVanRyseghem.5';
			package: 'Spec-Tests' with: 'Spec-Tests-BenjaminVanRyseghem.1';
			package: 'Spec-Tools' with: 'Spec-Tools-BenjaminVanRyseghem.5';
			package: 'Spec-Widgets' with: 'Spec-Widgets-BenjaminVanRyseghem.2']