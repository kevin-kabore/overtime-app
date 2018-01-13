require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = user = User.create(email: "email@email.com", password: "password", password_confirmation: "password", first_name:"Jon", last_name: "Snow")
    end

    it("can be created") do
      expect(@user).to be_valid
    end

    it("cannot be created without first_name, last_name") do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to be_invalid
    end
  end
end
