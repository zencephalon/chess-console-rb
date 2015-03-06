require 'board'

describe Pawn do
  it "should have the ability to double move on first move" do
    board = Board.new(<<-chess)
..
..
Pp
    chess

    expect(board.get(0, 0).moves).to eq([[1, 0], [2, 0]])
  end
end