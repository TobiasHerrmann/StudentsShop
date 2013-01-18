# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(title: 'Ruby on Rails 3.1: Das Entwickler-Handbuch',
              description:
                %{<p>
                  Das erste und umfassendste Handbuch zu Ruby on Rails 3! Einiges hat sich getan: Rails 3 integriert das Ruby-Framework
                  >>Merb<< und erweitert damit enorm sein Potenzial. [...] Tipps und Tricks, eine umfassende Befehlsreferenz und eine 
                  Einfuehrung in die Sprache Ruby lassen dann keine Wuensche mehr offen.
                  </p>},
              image_url: '/assets/RubyOnRails3Buch.jpg',
              price: 39.90)
              
Product.create(title: 'Jetzt lerne Ich Android',
              description:
                %{<p>
                  Android ist derzeit eines der wichtigsten und heissesten Betriebssysteme fue Handys bzw. Smartphones und andere mobile
                  Geraete. Und jeder, der ueber ein wenig JavaKenntnisse verfuegt, kann eigene Programme fuer diese Geraete schreiben.
                  Die Apps in diesem Buch zielen vor allem auf Handys ab und fuehren Sie mit Spass und Kompetenz Schritt fuer Schritt
                  in die aufregende Welt der AndroidProgrammierung ein.
                  </p>},
              image_url: '/assets/AndroidAppBuch.jpg',
              price: 29.95)
              
Product.create(title: 'Computernetzwerke',
              description:
                %{<p>
                   Computernetzwerke: Der Top-Down-Ansatz stellt Technologien und Modelle im Bereich des Internets, der Telekommunikationssysteme
                   und der Computernetze dar und ist das fuehrende Lehrbuch in diesem Bereich. [...] Die Autoren zeigen so, dass das Thema
                   Computernetzwerke mehr zu bieten hat als trockende Standards, die beispielsweise Nachrichtenformate und Protokollverhalten
                   spezifizieren.             
                  </p>},
              image_url: '/assets/ComputernetzwerkeBuch.jpg',
              price: 59.95)
                            
Product.create(title: 'Grundkurs Programmieren Java',
              description:
                %{<p>
                  PRGOGRAMMIEREN LERNEN LEICHT GEMACHT - Aktuell: Mit Java 7 - Setzt wirklich keine Programmierkenntnisse voraus - Fuehrt erfolgreich
                  von den ersten Schritten bis hin zur Entwicklung von Anwendungen in Netzen - Mit zahlreichen Uebungsaufgaben und Beispielen - 
                  ...
                  </p>},
              image_url: '/assets/GrundkursJavaBuch.jpg',
              price: 34.90)