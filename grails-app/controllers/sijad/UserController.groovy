package sijad

class UserController {

	def index(){
		
		redirect(action:'login')
	}

	 def loginQuisioner() { 
			if(session.user) {
				if (session.user == 'quisioner') {
					redirect(controller:'quisioner')
					return
				}
					redirect(controller:'jurnal')
					return
			}
			session.invalidate()
	}
	
    def login() { 
			if(session.user) {
				if (session.user == 'quisioner') {
					redirect(controller:'quisioner')
					return
				}
					redirect(controller:'jurnal')
					return
			}
			session.invalidate()
	}
	
	def doLogin() {
		if(params.nim){
		session.user = "quisioner"
		session.nim = params.nim
		redirect(controller:'quisioner',action:'list')
		return
		}
		else{
			def user = Dosen.findWhere(nidn:params['nidn'], password:params['password'])
			if (user) {
				session.user = user.id
				redirect(controller:'jurnal')
			} else{
				redirect(controller:'user',action:'login')
			}
		}
	}
	def logout() {
			session.invalidate()
			redirect(controller:'user',action:'login')
	}

	def profile() {
		[dosenInstance: Dosen.get(session.user.id)]
	}
}
