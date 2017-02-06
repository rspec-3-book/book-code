PublicCompany = Struct.new(:name, :value_per_share, :share_count) do
  def got_better_than_expected_revenues
    self.value_per_share *= rand(1.05..1.10)
  end

  def market_cap
    @market_cap ||= value_per_share * share_count
  end
end

RSpec.describe PublicCompany do
  let(:company) { PublicCompany.new('Nile', 10, 100_000) }

  it 'increases its market cap when it gets better than expected revenues' do
    before_market_cap = company.market_cap
    company.got_better_than_expected_revenues
    after_market_cap = company.market_cap

    expect(after_market_cap - before_market_cap).to be >= 50_000
  end

  it 'provides attributes' do
    expect(company.name).to eq('Nil')
    expect(company.value_per_share).to eq(10)
    expect(company.share_count).to eq(10_000)
    expect(company.market_cap).to eq(1_000_000)
  end

end
