class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        new_backer_for_project = ProjectBacker.new(self, backer)
    end

    def backers
        backers_projects = ProjectBacker.all.select{|pb| pb.project == self}
        backers_projects.map {|bp| bp.backer}
    end


end