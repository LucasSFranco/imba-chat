import '@fontsource/nunito'

import './styles/global'

import { routes } from './constants/routes'

import './views/forgot-password'
import './views/login'
import './views/register'

tag app
	<self.dark>
		<forgot-password route=routes['forgot-password']>
		<login route=routes['login']>
		<register route=routes['register']>

imba.mount <app>
