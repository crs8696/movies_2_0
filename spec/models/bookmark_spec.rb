require "rails_helper"

RSpec.describe Bookmark, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user_bookmark) }

    it { should belong_to(:bookmarker) }
  end

  describe "InDirect Associations" do
    it { should have_one(:director) }

    it { should have_one(:cast_of_actor) }
  end

  describe "Validations" do
  end
end
