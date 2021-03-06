require "rails_helper"

RSpec.describe Review, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:reviewer) }

    it { should belong_to(:movie) }
  end

  describe "InDirect Associations" do
    it { should have_one(:director) }

    it { should have_one(:cast_of_actor) }
  end

  describe "Validations" do
  end
end
