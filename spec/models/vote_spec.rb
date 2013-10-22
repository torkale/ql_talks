require 'spec_helper'

describe Vote do
  it "valdates uniqeness of user and talk" do
    Vote.create!(user_id: 1, talk_id: 1)
    vote = Vote.create(user_id: 1, talk_id: 1)
    vote.should_not be_valid
  end
end
