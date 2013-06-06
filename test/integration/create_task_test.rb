require 'test_helper'

class CreateTaskTest < ActionDispatch::IntegrationTest
  test "creating a new task" do
      visit '/'
      click_link 'New Task'
      fill_in 'Title', with: 'My First Task!!'
      click_button 'Add Task'
      assert_include page.body, "Your task has been added to your ToDo List!"
      visit '/tasks'
      assert_include page.body, 'My First Task!!'
    end
  # test "the truth" do
  #   assert true
  # end
end
