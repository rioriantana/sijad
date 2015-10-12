package sijad

class UserController {

    def login() { 
			if(session.user) {
					redirect(controller:'jurnal')
					return
			}
			session.invalidate()
	}
	
	def doLogin() {
			
		def user = Dosen.findWhere(nidn:params['nidn'], password:params['password'])
		if (user) {
			session.user = user
			redirect(controller:'jurnal')
		} else
			redirect(controller:'user',action:'login')
	}
	
	def logout() {
			session.invalidate()
			redirect(controller:'user',action:'login')
	}

	def profile() {
		[petugasInstance: Dosen.get(session.user.id)]
	}
}
