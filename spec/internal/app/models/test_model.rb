class TestModel
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :date

  def persisted?
    false
  end
end
