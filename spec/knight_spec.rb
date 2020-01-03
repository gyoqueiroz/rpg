require_relative '../knight'

RSpec.describe Knight do

    it 'attacks with a weapon' do
        knight = Knight.new('Knight')
        expect(knight.attack('sword')).to eq 0
    end

end