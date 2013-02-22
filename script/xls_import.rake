#Encoding: UTF-8
require 'rubygems'
require 'roo'
# to reset the database and re-populate the sample data:
# bundle exec rake db:reset
# bundle exec rake db:populate --trace
# bundle exec rake db:test:prepare

      file = File.open("c:/Sites/katalog.xls")
      oo = Excel.new(file)
      oo.default_sheet = oo.sheets.first
      2.upto(oo.last_row) do |line|
        autor      = oo.cell(line,'D')
        titel      = oo.cell(line,'B')
        schlagwort = oo.cell(line,'J')

        unless (autor.empty? || titel.empty?)
           Medium.create!(autor: autor, titel: titel, schlagwort: schlagwort)
           puts autor + ' - ' + titel
        end
      end
    

    # fix umlaute!
    # @songs = Song.all
    # @songs.each do |song|
    #   artist = song.artist
    #   title  = song.title
    #   if      artist.include?('rzte ')
    #       song.artist = 'Die Ärzte'
    #       song.save!
    #   elseif artist.include?('rzende Neubaut') 
    #       song.artist = 'Einstürzende Neubauten'
    #       song.save!
    #   end
    # end