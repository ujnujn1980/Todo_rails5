describe '四則演算' do
  it '1 + 1 = 2 になること' do
    expect( 1 + 1 ).to eq 2
  end
end

describe '四則演算' do
  it '1 * 2 = 2 になること' do
    expect( 1 * 2 ).not_to eq 1
  end

describe '四則演算' do
  it do
    expect( 1 * 2 ).not_to eq 3
    expect( 1 * 2 ).not_to eq 3
  end
end

describe '四則演算' do
  describe '四則演算' do
    it do
      expect( 1 * 2 ).not_to eq 3
    end
  end

  describe '四則演算' do
    it do
      expect( 10 - 1 ).not_to eq 3
    end
  end
end

describe '四則演算' do
  context '四則演算' do
    it do
      expect( 1 * 2 ).not_to eq 3
    end
  end

  context '四則演算' do
    it do
      expect( 10 - 1 ).not_to eq 3
    end
  end
end


end


