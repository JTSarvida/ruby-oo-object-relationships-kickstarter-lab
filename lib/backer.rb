class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        projBack = ProjectBacker.new(project, self)
    end

    def backed_projects
        firstArray = ProjectBacker.all.select {|project| project.backer == self}
        firstArray.map {|pBacker| pBacker.project}
    end

end
