# FoodIndex
SOE3 Semesterarbeit
In diesem Projekt werde ich mit WinForms eine komplette c# Anwendung für die Verwaltung eines Supermarktes erstellen. Die Anwendung beginnt mit einem schön aussehenden Splash-Formular, das zu einem Login-Formular führt. Das Anmeldeformular wird mit einer Datenbank verbunden, es gibt zwei Rollen in der Anwendung, Admin und Verkäufer, wenn die Benutzerkennung und das Passwort mit den Einträgen in der Verkäufertabelle übereinstimmen, meldet sich der Benutzer im Verkaufsformular an.
Vom Verkaufsformular aus kann er verschiedene Produkte verkaufen und Rechnungen drucken.
Wenn sich der Benutzer als Administrator anmeldet, kann er zum Produktformular gehen. Er kann Produkte hinzufügen, bearbeiten, löschen und den Produktbestand einsehen.
Der Administrator kann die verschiedenen Verkäufer verwalten, er kann die Verkäufer hinzufügen, bearbeiten oder aktualisieren.
Der Admin kann die verschiedenen Kategorien verwalten, zu denen die verschiedenen Produkte gehören, der Admin kann alle Verkäufe eines bestimmten Tages auflisten.

um das programm erfolgreich zu starten

stellen Sie ein datenbank verbindung mit Sql Server Management Studio her dies erschein im Server Explorer im VS
im Ordner Script, führen sie den script aus um eine Datenbank zu kreieren
links auf server Explorer in VS machen sie eine Rechtsklick und klicken sie auf properties. danach wählen sie ihre Connection String und fügen dies in der jeweiligen
formen im Ordner businessObject_views.
