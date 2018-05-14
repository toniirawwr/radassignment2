class UserTest < ActiveSupport::TestCase
  test "User without password" do
     entry = User.create({:username => 'testuser123'})
     assert_not entry.save, "Save username without password"
  end
  
  test "User with username longer than 15 chars" do
     entry = User.create({:username => 'testuser1234qwert', :password => '$2a$10$Pht2m5l0Vgq5gZsGVcryHeBj2gBgMRXv6gV6qG6oYIC'})
     assert_not entry.save, "Save username longer than 15 chars"
  end
  
end
