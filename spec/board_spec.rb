require 'board'
require 'chess'

describe Board do
  it "should parse a string" do
    board = Chess.board(<<-chess)
..
Pp
    chess

    expect(board.get([0, 0])).to be_a(Pawn)
  end

  it "should have a working to_s" do
    board = Chess.board(<<-chess)
..
Pp
    chess

    expect(board.to_s).to eq(<<-chess.chomp)
  
♙♟
    chess
  end
end