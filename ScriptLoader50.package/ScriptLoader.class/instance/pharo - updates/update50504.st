update50504
	"self new update50504"
	#('Athens-Cairo' 'FFI-NB-Legacy' 'FFI-NB-Tests'  'FuelCommandLineHandler' 'FuelSystem-FileRegistry' 'GT-InspectorExtensions-Core' 'NativeBoost-Core' 'NativeBoost-Win32' 'OSWindow-SDL2' 'Spec-Inspector' 'Tool-Profilers')
	do: [ :each |  (MCWorkingCopy allManagers detect: [ :wc | wc packageName = each ]) modified: false ].
	self withUpdateLog: '17249 Integrate weak announcement changes (spur migration)
	https://pharo.fogbugz.com/f/cases/17249

17252 integrate Compiler changes (spur migration)
	https://pharo.fogbugz.com/f/cases/17252

'.
	self loadTogether: self script50504 merge: false.
	self flushCaches.
self cleanRepositories.
