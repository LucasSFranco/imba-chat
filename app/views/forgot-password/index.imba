import { routes } from '../../constants/routes'

import '../../components/app-button'
import '../../components/app-divider'
import '../../components/app-form-field'
import '../../components/app-icon'
import '../../components/app-link'
import '../../components/app-text-input'

tag forgot-password
	email = app.forgotPassword.email
	loading = app.forgotPassword.loading
	
	changeEmail = app.forgotPassword.changeEmail
	resetPassword = app.forgotPassword.resetPassword

	<self[size: 100% d: flex ai: center jc: center]>
		<[p: 4]>
			<h3[fw: 700 c: $c9 ta: center mb: 2]> "Forgot password"
			<h6[c: $c6 ta: center mb: 16]> "Enter your email and we'll send you a link to change your password."
			<[d: grid gap: 8]>
				<[d: grid gap: 4]>
					<app-form-field
						label='Email'
						error=email.error.message
					>
						<app-text-input
							icon='envelope'
							value=email.value
							error=!!email.error.code
							@change=changeEmail(e.detail)
						>
					<app-button.primary
						loading=loading.resetPassword
						@click=resetPassword
					>
						"Reset password"
				<app-divider> "or"
				<app-button.secondary.outlined
					route-to=routes['register']
				>
					"Create new account"
			<a.return-to-login 
				route-to=routes['login']
			>
				"Back to login..."

	css &
		.return-to-login
			text-decoration: none
			
			height: 3.75rem 

			display: flex 
			align-items: center 
			justify-content: center 
			
			position: absolute 
			left: 0 
			right: 0 
			bottom: 0
			
			background: $custom-bg 
			color: $c6 
			font-size: .875rem 
			font-weight: 700 
			