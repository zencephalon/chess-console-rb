require 'board'

describe Board do
  it "should parse a string" do
    board = Board.new(<<-chess)
..
Pp
    chess

    expect(board.get([0, 0])).to be_a(Pawn)
  end
end