import { global } from '../global'

import { api } from '../../services/api'

import { Account } from '../../helpers/register/Account'

class Register 
	account = new Account

	loading = {
		signUp: false
	}

	def changeAccount [field, value]
		account[field].value = value

	def signUp
		loading = { ...loading, signUp: true }

		try 
			# const profile = await api.post('/auth/sign-up')
			const profile = { name: 'Lucas S Franco' }

			global.profile = profile
		catch error
			if error.response
				const { data } = error.response

				for [fieldKey, error] of data
					account[fieldKey] = {
						code: error.code
						message: error.message
					}
			else
				console.log(error)

		loading = { ...loading, signUp: false }

export const register = new Register
