require 'spec_helper'

describe Talk do
  fixtures :users, :talks
  subject{
    talks(:simple)
  }
  it "increments votes_count" do
    subject.votes.create(user_id: users(:jon).id)
    subject.reload.votes_count.should == 1
  end
end
