require "rails_helper"

RSpec.describe Ride, type: :model do
    describe "validations" do
        it {should validate_presence_of :name}
        it {should validate_presence_of :thrill_rating}
        it {should validate_presence_of :open}
    end

    describe "relationships" do
        it {should have_many :mechanic_rides}
        it {should have_many(:mechanics).through(:mechanic_rides)}
    end
end
    