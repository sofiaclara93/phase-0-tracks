require_relative 'word_game'

describe Word_game do 
  let(:game) {Word_game.new("dog")}

  it "prints blanks for word length" do
    expect(game.blank_word("dog")).to eq "---"
  end 

  it "prints letters included in blank word" do 
    expect(game.include_letter("dog", "d")).to eq "d--"
  end

  it "checks if guess counter is counting down" do
    expect(game.blank_word("dog")). to eq "---"
    expect(game.guess_count). to eq 5
  end 


end 