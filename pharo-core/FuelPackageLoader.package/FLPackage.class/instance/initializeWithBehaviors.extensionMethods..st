initialize-release
initializeWithBehaviors: someBehaviors extensionMethods: someExtensionMethods

	self initialize.
	behaviors := someBehaviors.
	extensionMethods := someExtensionMethods.
	mustInitialize := self class mustInitializeByDefault.
	preLoadActions := OrderedCollection new.
	postLoadActions := OrderedCollection new.
	additionalObjects := IdentityDictionary new.
	packageHeader := FLPackageHeader new.