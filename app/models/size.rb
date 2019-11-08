class Size < ApplicationRecord
  class InvalidSize < StandardError; end

  before_save :valide_size
  validates_presence_of :name

  private

  def valide_size
    raise InvalidDistance.new if name.to_i <= 0
  end
end