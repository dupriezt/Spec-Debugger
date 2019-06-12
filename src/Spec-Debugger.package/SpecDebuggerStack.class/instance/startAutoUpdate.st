initialization
startAutoUpdate
	sessionHolder whenChangedDo: [ :aSession | self updateContentFromSession: aSession ]