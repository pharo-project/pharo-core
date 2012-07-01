temporary
comment1

"Smalltalk organization removeElement: #ClassForTestingSystemChanges3
Smalltalk garbageCollect 
Smalltalk organizati

classify:under:


SystemChangeNotifier uniqueInstance releaseAll
SystemChangeNotifier uniqueInstance noMoreNotificationsFor: aDependent.


aDependent := SystemChangeNotifierTest new.
SystemChangeNotifier uniqueInstance
	notifyOfAllSystemChanges: aDependent
	using: #event:

SystemChangeNotifier uniqueInstance classAdded: #Foo inCategory: #FooCat



| eventSource dependentObject |
eventSource := EventManager new.
dependentObject := Object new.

register - dependentObject becomes dependent:
eventSource
	when: #anEvent send: #error to: dependentObject.

unregister dependentObject:
eventSource removeDependent: dependentObject.

[eventSource triggerEvent: #anEvent]
	on: Error
	do: [:exc | self halt: 'Should not be!']."