require "spec_helper"

describe DateInputRails do
  shared_examples "an <input type='date'>" do |path|
    it "submits data in ISO format" do
      visit path
      fill_in "date", :with => "10/28/2012"
      click_button "Submit"
      page.find("#date-param").should have_content("2012-10-28")
    end
  end

  context "using normal helper" do
    context "on browsers supporting <input type='date'>", :driver => :chrome do
      it_behaves_like "an <input type='date'>", "/test"
    end

    context "on browsers not supporting <input type='date'>", :driver => :firefox do
      it_behaves_like "an <input type='date'>", "/test"
    end
  end

  context "using form builder" do
    context "on browsers supporting <input type='date'>", :driver => :chrome do
      it_behaves_like "an <input type='date'>", "/test_models/new"
    end

    context "on browsers not supporting <input type='date'>", :driver => :firefox do
      it_behaves_like "an <input type='date'>", "/test_models/new"
    end
  end
end
