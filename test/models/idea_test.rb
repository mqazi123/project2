require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
test "Idea attributes must not be empty" do
idea = Idea.new
assert idea.invalid?
assert idea.errors[:title].any?
assert idea.errors[:platform].any?
assert idea.errors[:description].any?
assert idea.errors[:help_needed].any?
end

test "product is not valid without a unique title" do
    idea = Idea.new(title: ideas(:ruby).title,
    description: "yyy",
    platform: "ruby",
    help_needed: "designer")
    assert idea.invalid?
    assert_equal ["has already been taken"], idea.errors[:title]
end

end
