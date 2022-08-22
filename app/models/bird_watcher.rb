class BirdWatcher
    attr_accessor :name, :email, :bio, :favorite_species, :admin

    @@all = []

    def initialize(args)
        @name = args[:name]
        @email = args[:email]
        @bio = args[:bio]
        @favorite_species = args[:favorite_species]
        @admin = args[:admin]

        @@all << self
    end

    def self.all
        # @@all
        ObjectSpace.each_object(self).to_a
    end
end
