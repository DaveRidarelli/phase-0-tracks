require_relative 'wordguess'

 describe WordguessGame do
  let(:game) { WordguessGame.new}

  it "stores the secret word as separate letters in an array" do
    expect(game.new_game_word("funyuns")).to eq ["f", "u", "n", "y","u","n","s"]
  end

  it "checks if guessed letter is a new letter in the secret word and puts it in proper array(s)" do
    expect(game.check_guess("b")).to eq "Stinky guess! Guess Again!"
  end

   it "checks if secret_array is equal to correct_array" do
    expect(game.for_the_win).to eq congrats
  end

end