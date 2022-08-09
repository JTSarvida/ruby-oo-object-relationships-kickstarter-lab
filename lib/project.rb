class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        projbacker = ProjectBacker.new(self, backer)
    end

    def backers
        firstArray = ProjectBacker.all.select {|backer| backer.project == self}
        firstArray.map {|pBacker| pBacker.backer}
    end
end