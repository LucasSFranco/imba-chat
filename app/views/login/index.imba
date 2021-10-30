import { routes } from '../../constants/routes'

import '../../components/app-button'
import '../../components/app-divider'
import '../../components/app-form-field'
import '../../components/app-icon'
import '../../components/app-text-input'

tag login
	credentials = app.login.credentials
	loading = app.login.loading
	
	changeCredentials = app.login.changeCredentials
	signIn = app.login.signIn

	<self[size: 100% d: flex ai: center jc: center]>
		<[p: 4]>
			<h3[fw: 700 c: $c9 ta: center mb: 2]> i18n.t('login:4kqTQtBIj')
			<h6[c: $c6 ta: center mb: 16]> "Welcome back, we are glad to see you again!"
			<[d: grid gap: 8]>
				<app-button.secondary.outlined>
					<app-icon name="google">
					"Log in with Google"
				<app-divider> "or"
				<[d: grid gap: 4]>
					<app-form-field
						label='Email'
						error=credentials.email.error.message
					>
						<app-text-input
							icon='envelope'
							value=credentials.email.value
							@change=changeCredentials(['email', e.detail])
						>
					<app-form-field
						label='Password'
						error=credentials.password.error.message
					>
						<app-text-input
							icon='lock'
							type='password'
							value=credentials.password.value
							@change=changeCredentials(['password', e.detail])
						>
						<app-link[fs: .75rem]
							route-to=routes['forgot-password']
						> "Forgot password?"
					<[d: grid gap: 3]>
						<app-button.primary
							loading=loading.signIn
							@click=signIn
						>
							"Log in"
						app.global.profile..name
						<p[c: $c7 fs: .75rem ta: center]> 
							"Don't have an account?"
							<app-link[ml: 1]
								route-to=routes['register']
							> "Register!"
