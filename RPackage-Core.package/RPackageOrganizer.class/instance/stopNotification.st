private
stopNotification
	"(self instVarNamed: #default) stopNotification"
	
	"pay attention that we can break the system using this method"
	
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	MCWorkingCopy removeDependent: self.