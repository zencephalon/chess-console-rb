require 'board'

describe Rook do
  let(:board) { 
    Chess.board(<<-chess)
...
R.P
p..
    chess
  }

  it "can move properly" do
    expect(board.get([1, 0])).to be_a(Rook)
    expect(board.get([1, 0]).moves).to eq([[1, 0], [-1, 0], [0, 1]])
  end
end