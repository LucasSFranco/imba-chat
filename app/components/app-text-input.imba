tag app-text-input

	prop value
	prop placeholder
	prop type
	prop icon
	prop error

	def changeValue text
		value = text

		emit('change', self.value)

	<self.text-input .error=error>
		<input
			[pr: 2.5rem]=icon
			placeholder=placeholder
			value=value
			type=type
			@input=changeValue(e.target.value)
			@change.stop
		>
		<app-icon name=icon>

	css &
		display: flex
		align-items: center

		background: $c1
		border: 1px solid $c3
		border-radius: .125rem
		color: $c6
		position: relative
		transition: border-color 250ms, color 250ms

		input
			border: none
			background: none
			outline: none

			width: 100%

			color: inherit
			padding: .5rem .75rem
			font-family: inherit
			font-size: .875rem

		.icon
			pointer-events: none

			position: absolute
			right: .75rem

		@focus-within
			border-color: blue5
			color: $c7

		&.error
			border-color: red5



