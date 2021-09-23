
describe 'Forms' do

    it 'login com sucesso' do

        visit 'https://training-wheels-protocol.herokuapp.com/login'#visitar a página
       
        #usar inspecionar para saber o nome ou id do campo, botão, formulario

        fill_in 'username', with: 'stark' #fill_in -> nome do campo p/ preencher    with: -> escrever oq no campo
        fill_in 'password', with: 'jarvis!' #fill_in -> nome do campo p/ preencher     with: -> escrever oq no campo
        
        #find('button[type = "submit"]').click #clicar no primeiro botão, utilizar quando tiver apenas 1 unico botão na tela
        click_button 'Login'

        expect(find('#flash').visible?).to be true #find -> buscar elemento da tela
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!' #include -> contém mensagem no elemento 
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

end