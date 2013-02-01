versions
version04: spec
	<version: '0.4' imports: #('3.0-baseline' )>

	spec for: #'pharo' do: [
		
		spec 
			blessing: #'development';
			description: '04 : Modification according to the IWST paper';
			author: 'BenjaminVanRyseghem';
			timestamp: '6/4/2012 17:30'.
		
		spec 
			package: 'Spec-Bindings' with: 'Spec-Bindings-bvr.6';
			package: 'Spec-Builder' with:'Spec-Builder-bvr.7';
			package: 'Spec-Core' with: 'Spec-Core-BenjaminVanRyseghem.30';
			package: 'Spec-Examples' with: 'Spec-Examples-BenjaminVanRyseghem.6';
			package: 'Spec-Presenter' with: 'Spec-Presenter-BenjaminVanRyseghem.1';
			package: 'Spec-Tests' with: 'Spec-Tests-BenjaminVanRyseghem.10';
			package: 'Spec-Tools' with: 'Spec-Tools-BenjaminVanRyseghem.30';
			package: 'Spec-Widgets' with: 'Spec-Widgets-BenjaminVanRyseghem.36']