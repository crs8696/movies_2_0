require "rails_helper"

RSpec.describe Director, type: :model do
  describe "Direct Associations" do
    it { should have_many(:movies) }
  end

  describe "InDirect Associations" do
    it { should have_many(:bookmarks) }

    it { should have_many(:reviews) }
  end

  describe "Validations" do
  end
end
