class TestModelsController < ActionController::Base
  def test
  end

  def new
    @test = TestModel.new
    render "test_models/builder_test"
  end

  def create
    render "test_models/test"
  end
end
