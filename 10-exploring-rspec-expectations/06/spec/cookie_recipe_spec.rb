class CookieRecipe
  attr_reader :ingredients

  def initialize
    @ingredients = [:butter, :milk, :flour, :sugar, :eggs, :chocolate_chips]
  end
end

RSpec.describe CookieRecipe, '#ingredients' do
  it 'should include :butter, :milk and :eggs' do
    expect(CookieRecipe.new.ingredients).to include(:butter, :milk, :eggs)
  end

  it 'should not include :fish_oil' do
    expect(CookieRecipe.new.ingredients).not_to include(:fish_oil)
  end
end
