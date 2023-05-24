require_relative "piece"
require "singleton"

class NillPiece < Piece
    include Singleton
    def initialize
        @name = "nilita"
        @color = :g
    end
end
