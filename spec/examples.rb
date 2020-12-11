require_relative '../caescar'

describe '#caescar_cipher' do
  #subject { caescar_cipher( #{text}, #{num}) }
  let(:text) {'The quick brown fox jumped over the lazy dogs'}
  let(:num1) {11}
  let(:num2) {3}
  it 'returns and encripted text' do
    expect(caescar_cipher(text,num1)).to eq 'Esp bftnv mczhy qzi ufxapo zgpc esp wlkj ozrd'
  end
  it 'returns and encripted text' do
    expect(caescar_cipher('The five boxing wizards jump quickly',num2)).to eq 'Wkh ilyh eralqj zlcdugv mxps txlfnob'
  end
  it 'returns and encripted text' do
    expect(caescar_cipher('Wkh ilyh eralqj zlcdugv mxps txlfnob',-num2)).to eq 'The five boxing wizards jump quickly'
  end
  it 'returns and encripted text' do
    expect(caescar_cipher('This method uses selective specification',6)).to eq('Znoy skznuj ayky ykrkizobk yvkioloigzout')
  end
  it 'returns and encripted text' do
    expect(caescar_cipher('(similar to pattern matching in Haskell)',6)).to eq('(yosorgx zu vgzzkxt sgzinotm ot Ngyqkrr)')
  end
  it 'returns and encripted text' do
    expect(caescar_cipher('to modify only alphabetic characters.',6)).to eq('zu sujole utre grvnghkzoi ingxgizkxy.')
  end
end




