import i18n from '../i18n'

import { global } from './global'

import { forgotPassword } from './modules/forgotPassword'
import { login } from './modules/login'
import { register } from './modules/register'

extend tag element
	get app
		return {
			global

			forgotPassword
			login
			register
		}

	get i18n
		return i18n
