squeakPackagesAndGroups: spec
	spec for: #squeak do: [
		spec package: 'FuelPlatform-Squeak-Core' with: [ spec requires: 'FuelPlatform-Core' ] ].
	spec for: #'squeak4.x' do: [
		spec package: 'FuelPlatform-Squeak-04x' with: [ spec requires: 'FuelPlatform-Squeak-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Squeak-04x' ].
	spec for: #'squeak5.x' do: [
		spec package: 'FuelPlatform-Squeak-05' with: [ spec requires: 'FuelPlatform-Squeak-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'FuelPlatform-Squeak-05' ]