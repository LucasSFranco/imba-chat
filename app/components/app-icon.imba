const icons = {
	envelope: import('../assets/icons/envelope.svg')
	google: import('../assets/icons/google.svg')
	lock: import('../assets/icons/lock.svg')
	user: import('../assets/icons/user.svg')
}

tag app-icon

	prop name\string
	
	<self.icon>
		<svg src=icons[name]>

	css &
		display: flex
		align-items: center
		justify-content: center

		width: 1em
		height: 1em

		svg
			width: inherit
			height: inherit	

			fill: currentColor
