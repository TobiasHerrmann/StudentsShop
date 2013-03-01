# Installationshinweise für dieses Rails-Projekt
## Students-Shop.de
### Ein Projekt von Tobias Herrmann


####Informationen zu diesem Projekt
Dieses Projekt ist von mir alleine entworfen, entwickelt und implementiert worden. Dies ist die Folge aus dem Abspringen zweier Kommilitonen. Nach kurzer Absprache mit Thomas Holstegge wurde dieser Weg entschieden. Es wurde dennoch jedes Bewertungskriterium erfüllt, trotz verminderter Mitgliederanzahl. Vereinzelt sind allerdings Probleme aufgetreten.

#####Die Vision
Es sollte eine Web-Anwendung erstellt werden für sämtliche Studenten der Stadt Münster. Studenten benötigen zu Beginn eines jeden Semesters zwei Dinge am meisten: eine Wohnung und Bücher. Mit dieser Anwendung soll das nun möglich gemacht werden. Im Bereich der Lehrbücher können Studenten ihre eigenen gebrauchten Bücher verkaufen und auch neue Bücher von anderen Studenten erwerben.
Ein ähnliches Prinzip ist bei der Wohnungssuche zu finden. Es können Wohnungen angeboten werden, beispielsweise während eines längeren Auslandsaufenthalt zur Zwischenmiete etc. Zudem lassen sich auch hier angebotene Wohnungen erwerben. Auf dem aktuellen Stand kann sich ein Nutzer (Student) mit dem Anbieter der Wohnung per Mail in Verbindung setzen und so einen Termin vereinbaren.

#####Umsetzung
Die Vision und der daraus entwickelte Entwurf sind schnell entstanden. Auch ein Design lag bereits vor. Das Design wurde im Laufe der Entwicklung allerdings geändert und mit 'twitter bootstrap' bearbeitet.
Zunächst wurde mit Hilfe des scaffold-Generator eine einfache Oberfläche für einen Buchshop erstellt. Im Anschluss daran wurden die Nutzerregistrierung und Authentifizierung mit devise umgesetzt.

#####Probleme
Probleme sind besonders in der Umsetzung des Deployment aufgetreten. Der erste Schritt des Deployments an sich ('git push heroku master') gelang nach einigen Änderungen, u.a. an den ssh-Einstellungen, was im Nachhinein Probleme beim commiten und push auf github geführt hat. Die nächsten Schritte des Deployment auf heroku fanden aber keinen erfolgreichen Abschluss. Das Kommando 'heroku run rake db:migrate' führte zu folgender Fehlermeldung:

DEPRECATION WARNING: You have Rails 2.3-style plugins in vendor/plugins! Support for these plugins will be
 removed in Rails 4.0. Move them out and bundle them in your Gemfile, or fold them in to your app as lib/myplugin/*
  and config/initializers/myplugin.rb. See the release notes for more on this:
	 http://weblog.rubyonrails.org/2012/1/4/rails-3-2-0-rc2-has-been-released. (called from <top (required)> at /app/Rakefile:7)

Auch eine gründliche Internet-Recherche konnte dieses Problem nicht rechtzeitig beheben. Anscheinend liegt das Problem bei den plugins von rails, die in dem vendor-Verzeichnis zu finden sind und der neuen Version von Rails
			
#####Ausblick
Dieses Projekt befindet sich noch lange nicht am Ende. Aus diesem Grund würde ich es begrüßen, wenn für Fragen auch weiterhin ein offenes Ohr bestehen würde.
Es soll zunächst einmal der Code noch einmal überarbeitet werden und "gesäubert werden". Im Anschluss daran soll noch eine direkte Chat-Funktion eingebaut werden, worüber sich Studenten direkt über die Plattform über beispielsweise angebotene Wohnungen oder Link-Empfehlungen unterhalten können.

####Installationshinweise


1. Klont dieses Repository auf euren lokalen Rechner:

        git clone https://github.com/TobiasHerrmann/StudentsShop.git

2. Nach erfolgreichem Klonen des Projektordners müssen noch die Migration ausgeführt werden und im Anschluss daran die .seed-Dateien geladen.

				rake db:migrate
				rake db:seed

3. Außerdem können mit dem Railsrunner noch 100 Bestellungen geladen werden, die dann auf der /orders-Seite zu finden sind.

				rake db:migrate rails runner script/load_orders.rb

4. Sobald alle vordefinierten Testdaten und Seeds geladen sind, kann der Rails server gestartet werden.

        cd /.../studentaInfoAktuell
				rails s

5. Ab diesem Punkt kann die Anwendung auf dem lokalen Server http://localhost:3000 genutzt werden.

        localhorst:3000/index
				


