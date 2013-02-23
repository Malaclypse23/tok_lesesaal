# encoding: UTF-8
require 'xmlsimple'
namespace :db do
#namespace :db => :environment do
  task :ladeXmlBuecher => :environment do
      file = File.open('c:/Sites/katalog.xml')
      katalog = XmlSimple.xml_in(file)
      # alle Kunstbücher...
      buecher = katalog['Kunstbuch'];
      # in ein Array:
      bookArray = buecher.to_a

      bookArray.each do |buch| 
        autor         = buch['Autor'].to_s.to_s.delete "{[\"]}".strip
        titel         = buch['Titel'].to_s.to_s.delete "{[\"]}".strip
        schlagwort    = buch['Schlagwort'].to_s.to_s.delete "{[\"]}".strip
        isbn          = buch['ISBN'].to_s.delete "{[\"]}".strip
        systematik    = buch['SystemId'].to_s.to_s.delete "{[\"]}".strip
        signatur      = buch['SignFort'].to_s.to_s.delete "{[\"]}".strip
        medienEtikett = buch['MedienEtik'].to_s.to_s.delete "{[\"]}".strip
        katalogId     = buch['KatalogNi'].to_s.to_s.delete "{[\"]}".strip

        Medium.create!(
        titel:         titel,
        autor:         autor,
        schlagwort:    schlagwort,
        isbn:          isbn,
        systematik:    systematik,
        signatur:      signatur,
        medienart:     'Buch',
        medienEtikett: medienEtikett,
        katalogId:     katalogId
        )

        puts titel + ' saved!'
      end

    end
end
