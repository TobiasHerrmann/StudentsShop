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

puts "Daten der Bookmarks erfolgreich geladen."

Product.delete_all
Product.create(title: 'Computernetzwerke (Pearson Studium - IT)', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Einführung in die Informatik', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Ruby on Rails 3.1 - Das Entwickler-Handbuch', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Grundkurs Programmieren in Java', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Jetzt lerne in Java 7', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Java ist auch eine Insel: Das umfassende Handbuch', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'HTML5 & CSS3: Webentwicklung mit den Standards von morgen', description: 'Dies ist eine Testdatei', price: 59.99)

Product.create(title: 'Einführung in die Allgemeine BWL', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'BWL für Dummies', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Handelsgesetzbuch', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Arbeitsgesetze', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Einkommenssteuerrecht', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Grundzüge der VWL', description: 'Dies ist eine Testdatei', price: 59.99)

Product.create(title: 'Mathematik', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Mathematik zum Studienbeginn', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Warum Mathematik glücklich macht', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Lineare Algebra: Eine Einführung', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Lehrbuch der Analysis', description: 'Dies ist eine Testdatei', price: 59.99)
Product.create(title: 'Analysis für Dummies', description: 'Dies ist eine Testdatei', price: 59.99)

puts "Daten der Lehrbücher erfolgreich geladen"
              
pass = SecureRandom.hex(5)
admin = User.create email: 'admin@admin.de', password: pass, password_confirmation: pass
admin.add_role :admin
puts "Admin password ist #{pass}"        
              
