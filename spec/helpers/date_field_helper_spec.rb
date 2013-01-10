require "spec_helper"

describe ActionView::Helpers::FormHelper do
  describe "#date_field" do
    it "returns HTML for a date input" do
      assign(:post, double(:written_on => Date.new(2004, 6, 15)))
      expected = %{<input id="post_written_on" name="post[written_on]" type="date" value="2004-06-15" />}
      assert_dom_equal(expected, helper.date_field("post", "written_on"))
    end

    it "converts the value to a date using #to_date" do
      assign(:post, double(:written_on => double(:to_date => Date.new(2004, 6, 15))))
      expected = %{<input id="post_written_on" name="post[written_on]" type="date" value="2004-06-15" />}
      assert_dom_equal(expected, helper.date_field("post", "written_on"))
    end

    it "omits a value when it is nil" do
      assign(:post, double(:written_on => nil))
      expected = %{<input id="post_written_on" name="post[written_on]" type="date" />}
      assert_dom_equal(expected, helper.date_field("post", "written_on"))
    end
  end
end

describe ActionView::Helpers::FormTagHelper do
  describe "#date_field_tag" do
    it "returns HTML for a date input" do
      expected = %{<input id="written_on" name="written_on" type="date" value="2004-06-15" />}
      assert_dom_equal(expected, helper.date_field_tag("written_on", Date.new(2004, 6, 15)))
    end

    it "omits a value when it is nil" do
      expected = %{<input id="written_on" name="written_on" type="date" />}
      assert_dom_equal(expected, helper.date_field_tag("written_on"))
    end
  end
end
