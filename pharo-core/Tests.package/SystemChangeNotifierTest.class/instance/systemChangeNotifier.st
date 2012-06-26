Private
systemChangeNotifier
	"The notifier to use. Do not use the one in the system so that the fake events triggered in the tests perturb clients of the system's change notifier (e.g. the changes file then shows fake entries)."

	^notifier