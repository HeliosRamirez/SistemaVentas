package sistemaventas

class TelefonoController {

    def index() {
        [telefonoInstanceList: Telefono.list()]
    }

    def create(){
        new Telefono()
    }

    def save(Telefono telefono){
        if(telefono){
           if(telefono.hasErrors()){
               respond telefono.errors, view: 'create'
               return
           }
           telefono.save(flush: true)
        }
        redirect(action: 'index')
    }
}
