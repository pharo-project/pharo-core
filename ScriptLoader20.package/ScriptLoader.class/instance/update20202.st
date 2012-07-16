pharo - updates
update20202
	"self new update20202"
	
	| privateAnnouncer privateRPackageSubscriptions publicRPackageSubscriptions overlap |
	privateAnnouncer := SystemAnnouncer privateAnnouncer.
privateRPackageSubscriptions := Array streamContents: [ :s|
	privateAnnouncer subscriptions 
		subscriptionsOf: RPackageOrganizer default 
		do: [ :e| s nextPut: e ]].
	
publicRPackageSubscriptions := Array streamContents: [ :s|
	SystemAnnouncer announcer subscriptions 
		subscriptionsOf: RPackageOrganizer default 
		do: [ :e| s nextPut: e ]].
	
"for documentation reasons inspect if you want to see the overlapping anouncements"
overlap := privateRPackageSubscriptions 
	select: [ :sub| publicRPackageSubscriptions anySatisfy: [ :f| sub action = f action ]].

"unregister RPackageOrganizer from all private announcements"
privateRPackageSubscriptions do: [ :sub| privateAnnouncer removeSubscription: sub].

"Recreate the RPackageOrganizzer"
RPackageOrganizer fillUp.
.
	self withUpdateLog: 'Issue 6336:	deleting a method raises error No package found for selector XXX in class YYY
	http://code.google.com/p/pharo/issues/detail?id=6336'.
	self loadTogether: self script192 merge: false.
	self flushCaches.
