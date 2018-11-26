class Backer
  attr_accessor :name, :back_project, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @project = project
    @backed_projects << project
    project.backers << project
    project.backers << self
  end

end
