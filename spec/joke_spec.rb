require './lib/joke'
# => true

RSpec.describe Joke do
  before(:each) do
    @joke = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  end

  it 'exists & has attributes' do
    expect(@joke).to be_a(Joke)
    expect(@joke.id).to eq(22)
    expect(@joke.setup).to eq("Why did the strawberry cross the road?")
    expect(@joke.punchline).to eq("Because his mother was in a jam.")
  end
end
