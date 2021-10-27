tag app-text-input

	value\string
	placeholder\string

	def alterValue text
		self.value = text

		emit('alter', self.value)

	<self.text-input>
		<input.input
			[pr: 2.5rem]
			placeholder=placeholder
			value=value
			@input=alterValue(e.target.value)
		>
		<slot>
		
	css &
		display: flex
		align-items: center

		background: cool0
		border: 1px solid cool2
		border-radius: .125rem
		color: gray5
		position: relative
		
		.input
			border: none
			background: none
			outline: none

			width: 100%

			color: inherit
			padding: .5rem .75rem
			font-family: inherit
			font-size: .875rem

		>>> .icon
			position: absolute
			right: .75rem

		@focus-within
			border-color: blue5
			color: gray6

			

