registerTo: aModel

	aModel announcer
		when: NautilusPackageSelected send: #packageSelected: to: self;
		when: NautilusGroupSelected send: #groupSelected: to: self;
		when: NautilusClassSelected send: #classSelected: to: self;
		when: NautilusProtocolSelected send: #protocolSelected: to: self;
		when: NautilusMethodSelected send: #methodSelected: to: self;
		when: NautilusShowGroupsChanged send: #showGroupsChanged: to: self.