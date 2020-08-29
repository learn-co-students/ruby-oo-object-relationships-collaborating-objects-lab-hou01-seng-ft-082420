class MP3Importer

    # @@all = []

    attr_reader :path

    def initialize(path)
        @path = path
        # @@all << self
    end

    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    end

    def import
        files.each {|f_name| Song.new_by_filename(f_name)}
    end




    # def self.all
    #     @@all
    # end
end