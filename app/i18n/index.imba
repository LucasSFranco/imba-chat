import i18n from 'i18next'

import enLogin from './locales/en/login.json'
import ptLogin from './locales/pt/login.json'

i18n.init({
	ns: ['login']
	fallbackLng: 'en'
	resources: {
		en:
			login: enLogin
		pt:
			login: ptLogin
	}
})

export default i18n
