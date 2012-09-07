class Relationship < ActiveRecord::Base
  #attr_accessible :followed_id, :follower_id
  attr_accessible :followed_id
  #describe "follower methods" do    
  #  it { should respond_to(:follower) }
  #  it { should respond_to(:followed) }
  #  its(:follower) { should == follower }
  #  its(:followed) { should == followed }
  #end
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
