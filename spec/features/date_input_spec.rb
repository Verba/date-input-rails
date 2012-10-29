require "spec_helper"

describe DateInputRails do
  shared_examples "an <input type='date'>" do
    it "submits data in ISO format" do
      visit "/test"
      fill_in "date", :with => "10/28/2012"
      click_button "Submit"
      page.find("#date-param").should have_content("2012-10-28")
    end
  end

  context "on browsers supporting <input type='date'>", :driver => :chrome do
    it_behaves_like "an <input type='date'>"
  end

  context "on browsers not supporting <input type='date'>", :driver => :firefox do
    it_behaves_like "an <input type='date'>"
  end
end
