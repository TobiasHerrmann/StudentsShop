# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'securerandom'

Bookmark.delete_all
Bookmark.create(title: 'focus-online', url:'http://www.focus.de', comment: 'focus')
Bookmark.create(title: 'heise-online', url:'http://www.heise.de', comment: 'Heise online ist ein Nachrichtenticker des Heise-Zeitschriften-Verlags im Web')
Bookmark.create(title: 'bild-online', url:'http://www.bild.de', comment: 'Bild ist eine deutsche, überregionale Boulevardzeitung, die werktäglich erscheint')
Bookmark.create(title: 'apple', url:'http://www.apple.com', comment: 'Apple Inc. ist ein Unternehmen mit Hauptsitz in Cupertino, Kalifornien (Vereinigte Staaten)')
Bookmark.create(title: 'golem', url:'http://www.golem.de', comment: 'Golem.de ist ein Web-Portal der Klaß & Ihlenfeld Verlag GmbH für Nachrichten aus dem IT-Bereich')
Bookmark.create(title: 'FH-Münster-WI', url:'https://www.fh-muenster.de/wirtschaftsinformatik/studieninteressierte/index.php?p=0', comment: 'Der Studiengang Wirtschaftsinformatik an der Fachhochschule in Münster')
Bookmark.create(title: 'RailsCasts', url:'http://railscasts.com', comment: 'Ruby on Rails Sreencasts')
Bookmark.create(title: 'FH-Münster', url:'https://www.fh-muenster.de/index.php', comment: 'Webseite der Fachhochschule in Münster')
Bookmark.create(title: 'Uni-Münster', url:'http://www.uni-muenster.de/de/', comment: 'Webseite der Universität in Münster')
Bookmark.create(title: 'amazon.de', url:'http://www.amazon.de', comment: 'amazon.de')
Bookmark.create(title: 'pearson-studium', url:'http://www.pearson-studium.de', comment: 'Lehrbücher versandkostenfrei')
Bookmark.create(title: 'zweitag', url:'http://www.zweitag.de/en', comment: 'zweitag is a software engineering concultancy from Münster, Germany')

puts "Daten erfolgreich geladen."
              
pass = SecureRandom.hex(5)
admin = User.create email: 'admin@admin.de', password: pass, password_confirmation: pass
admin.add_role :admin
puts "Admin password ist #{pass}"        
              
