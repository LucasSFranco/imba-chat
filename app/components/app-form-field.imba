tag app-form-field

	label\string
	error\string

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
			color: gray4
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
