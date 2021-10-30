import { routes } from '../../constants/routes'

import '../../components/app-button'
import '../../components/app-form-field'
import '../../components/app-icon'
import '../../components/app-link'
import '../../components/app-text-input'

tag register
	account = app.register.account
	loading = app.register.loading

	changeAccount = app.register.changeAccount
	signUp = app.register.signUp

	<self[size: 100% d: flex ai: center jc: center]>
		<[p: 4]>
			<h3[fw: 700 c: $c9 ta: center mb: 2]> i18n.t('register:title')
			<h6[c: $c6 ta: center mb: 16]> i18n.t('register:subtitle')
			<[d: grid gap: 8]>
				<[d: grid gap: 4]>
					<app-form-field
						label=i18n.t('register:name')
						error=account.name.error..message
					>
						<app-text-input
							icon='user'
							value=account.name.value
							error=!!account.name.error..code
							@change=changeAccount(['name', e.detail])
						>
							<app-icon name="user">
					<app-form-field
						label=i18n.t('register:email')
						error=account.email.error..message
					>
						<app-text-input
							icon='envelope'
							value=account.email.value
							error=!!account.email.error..code
							@change=changeAccount(['email', e.detail])
						>
							<app-icon name="envelope">
					<app-form-field
						label=i18n.t('register:password')
						error=account.password.error..message
					>
						<app-text-input
							icon='lock'
							value=account.password.value
							error=!!account.password.error..code
							@change=changeAccount(['password', e.detail])
						>
							<app-icon name="lock">
					<app-form-field
						label=i18n.t('register:confirm-password')
						error=account.confirmPassword.message
					>
						<app-text-input
							value=account.confirmPassword.value
							error=!!account.confirmPassword.error..code
							@change=changeAccount(['confirmPassword', e.detail])
						>
					<[d: grid gap: 3]>
						<app-button.primary
							loading=loading.signUp
							@click=signUp
						>
							i18n.t('register:register-btn')
						<app-link[fs: .75rem ta: center]
							route-to=routes['login']
						> i18n.t('register:to-login')
