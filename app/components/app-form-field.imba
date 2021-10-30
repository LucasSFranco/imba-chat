tag app-form-field

	prop label
	prop error

	<self.form-field
		.error=error
	>
		<label.label>
			label
			if error
				<span.message> " - {error}"
		<slot>

	css &
		display: flex
		flex-direction: column
		gap: .25rem

		.label
			color: $c5
			font-size: .625rem
			font-weight: 700
			text-transform: uppercase

			.message
				font-size: .625rem
				font-weight: 400
				text-transform: none

		&.error
			.label
				color: red5
