require 'board'

describe Pawn do
  let(:board) { 
    board = Board.new(<<-chess)
..
..
Pp
    chess
  }

  it "can double move on first move" do
    expect(board.get([0, 0]).moves).to eq([[1, 0], [2, 0]])
  end

  it "can't double move after first move" do
    board.move!([0, 0], [1, 0])
    expect(board.get([1, 0]).moves).to eq([[1,0]])
  end
end