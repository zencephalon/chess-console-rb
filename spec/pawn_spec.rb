describe Pawn do
  let(:board) { 
    Chess.board(<<-chess)
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

  let(:attack_board) {
    Chess.board(<<-chess)
p.p
.P.
    chess
  }

  it "can attack both enemies" do
    expect(attack_board.get([0, 1]).moves).to eq([[1, 0], [2, 0], [1, 1], [1, -1]])
  end
end