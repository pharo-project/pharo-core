pharoPackagesAndGroups: spec
	spec for: #pharo do: [
		spec package: 'FuelPlatform-Pharo-Core' with: [ spec requires: 'FuelPlatform-Core' ] ].
	spec for: #'pharo1.x' do: [
		spec package: 'FuelPlatform-Pharo-01x' with: [ spec requires: 'FuelPlatform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Pharo-01x' ].
	spec for: #'pharo2.x' do: [
		spec package: 'FuelPlatform-Pharo-02' with: [ spec requires: 'FuelPlatform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Pharo-02' ].
	spec for: #'pharo3.x' do: [
		spec package: 'FuelPlatform-Pharo-03' with: [ spec requires: 'FuelPlatform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Pharo-03' ].
	spec for: #'pharo4.x' do: [
		spec package: 'FuelPlatform-Pharo-04' with: [ spec requires: 'FuelPlatform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Pharo-04' ].
	spec for: #'pharo5.x' do: [
		spec package: 'FuelPlatform-Pharo-05' with: [ spec requires: 'FuelPlatform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Pharo-05' ].
	spec for: #'pharo6.x' do: [
		spec package: 'FuelPlatform-Pharo-06' with: [ spec requires: 'FuelPlatform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Pharo-06' ]