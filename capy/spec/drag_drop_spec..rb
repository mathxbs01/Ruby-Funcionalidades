

describe 'Drag and Drop', :drag do 

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end
    
    it 'homem aranha ao time do stark' do
        stark = find('.team-stark .column')

        spiderman = find('img[alt$=Aranha]')
        spiderman.drag_to stark

        expect(stark).to have_css 'img[alt$=Aranha]'
    end
end