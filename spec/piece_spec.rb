require 'piece'

describe Piece do
  let(:piece) {
    piece = Piece.new(true)
    piece.row = 5
    piece.col = 6
    piece
  }

  it "can calculate a relative position" do
    expect(piece.rel([3, 1])).to eq([8, 7])
  end

  it "can move to a new position" do
    piece.move!([10, 12])
    expect(piece.row).to eq(10)
    expect(piece.col).to eq(12)
  end
end