class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    backed_projects << project
    project.backers << self
  end

end


# When a backer has added a project to its list of backed projects,
# that project should also add the backer to its list of backers.
