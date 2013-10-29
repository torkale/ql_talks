require 'spec_helper'
describe TalksController do
  fixtures :talks
  it 'gets the current talks without params' do
    get :index
    assigns(:talks).should_not include talks(:over)
  end

  it 'gets the ended talks with over params' do
    get :index, over: true
    assigns(:talks).should_not include talks(:simple)
  end
  
end
