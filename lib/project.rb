class Project
  attr_accessor :title, :backers, :backer, :back_project

  def initialize(title)
    @title = title
    @backers = []
  end

def add_backer(backer)
  @backer = backer
  @backers << backer
  backer.backed_projects << self 
end
end
