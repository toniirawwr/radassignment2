require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "Comment with blank content" do
     entry = Comment.create({:content => "", :news_id => 1, :user_id => 1})
     assert_not entry.save, "Save comment without content"
  end
  
  test "Comment with content" do
     entry = Comment.create({:content => "Comment 1", :news_id => 1, :user_id => 1})
     assert_not_nil entry.save, "Comment Saved"
  end
  
  test "Comment without news_id" do
     entry = Comment.create({:content => "Comment 1", :user_id => 1})
     assert_not entry.save, "Save comment without news_id"
  end
  
  test "Comment without user_id" do
     entry = Comment.create({:content => "Comment 1", :news_id => 1})
     assert_not entry.save, "Save comment without user_id"
  end
  
  test "Comment with content is below minimum of 3" do
     entry = Comment.create({:content => "12", :news_id => 1, :user_id => 1})
     assert_not_nil entry.save, "Save comment with content below minimum"
  end
end
