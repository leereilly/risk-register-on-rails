require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  test "project slugs should be unique" do
    project1 = Factory.create(:project)
    project2 = Factory.create(:project)
    project1.slug = project2.slug
    assert_equal false, project1.valid?
  end

  test "should not save project without name and slug" do
    project = Project.new
    assert_equal false, project.valid?
    project.name = 'Project name'
    assert_equal false, project.valid?
    project.slug = 'Project slug'
    assert_equal true, project.valid?
  end

end
