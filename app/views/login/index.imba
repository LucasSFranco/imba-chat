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
			<h3[fw: 700 c: $c9 ta: center mb: 2]> i18n.t('login:title')
			<h6[c: $c6 ta: center mb: 16]> i18n.t('login:subtitle')
			<[d: grid gap: 8]>
				<app-button.secondary.outlined>
					<app-icon name="google">
					i18n.t('login:google-auth-btn')
				<app-divider> i18n.t('common:or')
				<[d: grid gap: 4]>
					<app-form-field
						label=i18n.t('login:email')
						error=credentials.email.error.message
					>
						<app-text-input
							icon='envelope'
							value=credentials.email.value
							error=!!credentials.email.error.code
							@change=changeCredentials(['email', e.detail])
						>
					<app-form-field
						label=i18n.t('login:password')
						error=credentials.password.error.message
					>
						<app-text-input
							icon='lock'
							type='password'
							value=credentials.password.value
							error=!!credentials.password.error.code
							@change=changeCredentials(['password', e.detail])
						>
						<app-link[fs: .75rem]
							route-to=routes['forgot-password']
						> i18n.t('login:to-forgot-password')
					<[d: grid gap: 3]>
						<app-button.primary
							loading=loading.signIn
							@click=signIn
						>
							i18n.t('login:log-in-btn')
						<p[c: $c7 fs: .75rem ta: center]>
							i18n.t('login:no-account')
							<app-link[ml: 1]
								route-to=routes['register']
							> i18n.t('login:to-register')
