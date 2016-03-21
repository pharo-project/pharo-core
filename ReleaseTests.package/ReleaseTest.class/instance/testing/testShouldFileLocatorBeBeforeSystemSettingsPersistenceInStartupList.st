testShouldFileLocatorBeBeforeSystemSettingsPersistenceInStartupList
	"This test documents issue https://pharo.fogbugz.com/f/cases/17721/Starting-Image-50617-raises-MNU"
	| startupList |
	
	startupList := (SessionManager default startupList collect: #handledId).
	
	self should: [ (startupList indexOf: #FileLocator) < (startupList indexOf: #SystemSettingsPersistence) ]