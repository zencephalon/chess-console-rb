describe Knight do
  let(:board) { 
    Chess.board(<<-chess)
.P.p.
P....
..N..
p....
.....
    chess
  }

  it "can move properly" do
    expect(board.get([2, 2]).moves).to eq([[2, 1], [-2, 1], [-2, -1], [1, 2], [-1, 2], [-1, -2]])
  end
end