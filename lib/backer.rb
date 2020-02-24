class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        new_project_to_back = ProjectBacker.new(project, self)
    end

    def backed_projects
        backers_projects = ProjectBacker.all.select{|pb| pb.backer == self}
        backers_projects.map {|bp| bp.project}
    end



end