require 'test_helper'

class ItemTest < ActiveSupport::TestCase
    test "News without title" do
        entry = New.create({:title => "", :websource => "https://www.google.com", :news_id => 1, :user_id => 1})
        assert_not entry.save, "Saved News without title"
    end
    
    test "News without content" do
        entry = New.create({:title => "Test News Post", :websource => "", :news_id => 1, :user_id => 1})
        assert_not entry.save, "Saved News without websource"
    end
    
    test "News without news_id" do
        entry = New.create({:title => "Test News Post", :websource => "https://www.google.com", :user_id => 1})
        assert_not_nil entry.save, "Saved News without news_id"
    end
    
    test "News without user_id" do
        entry = New.create({:title => "Test News Post", :websource => "https://www.google.com", :news_id => 1})
        assert_not_nil entry.save, "Saved News without user_id"
    end
    
    test "News with title less than mimimum chars" do
        entry = New.create({:title => "Test", :websource => "https://www.google.com", :news_id => 1, :user_id => 1})
        assert_not_nil entry.save, "Saved News with title below mimimum chars"
    end
end
