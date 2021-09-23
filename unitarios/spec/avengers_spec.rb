class AvengersHeadQuarter
   #adicionando um vingador a lista como array
    
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end

end

#TDD(Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do

    ##Verificando se tem a string na lista
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end


    ##Fazendo comparação com a própria lista
    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true
    end

    #Fazendo comparação com a posição da string na lista
    it 'thor deve ser o primeiro da lista' do

        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')

    end
    
    it 'Ironman deve ser o último da lista' do

        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')

    end

    #Verificando se o valor está presente na variavel
    it 'deve conter o sobrenome' do

        avenger = 'Peter Parker'

        #Fazendo teste para verificar se possui
        expect(avenger).to match (/Parker/)

        #Fazendo teste para verificar se não possui
        expect(avenger).not_to match (/Batista/)
    end
end