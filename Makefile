# Makefile by Ayoub BOULAHYA (boulahya.ayoub@gmail.com OR ayoub.boulahya@etu.univ-amu.fr)
all  :  dtd xsd web tidy xq java  
dtd  : 
	xmllint --valid --noout master_with_entities.xml
xsd  : xsd_no_entities
	xmllint --valid --noout --schema master.xsd master.xml
xsd_no_entities :
	xmllint --valid --noent master_with_entities.xml > master.xml 
web  : www
	cd java && java -jar saxon9he.jar -s:../master.xml -xsl:../xsl/master.xsl && cd ..
www  :
	mkdir -p www/css www/img www/parcours www/intervenants www/unites && cp ressources/css/style.css www/css/ && cp ressources/css/style4XQuery.css www/css/ && cp ressources/img/AMU.png www/img/ && cp ressources/img/header-masterinfo.png www/img/ && cp ressources/img/logo-sciences.png www/img/ && cp ressources/img/marge-paille.gif www/img/ && cp ressources/img/icon_email.gif www/img/ && cp ressources/img/fond.jpg www/img/
tidy :
	tidy -utf8 --error-file tidy_out.txt -i -m www/*.html
xq   :
	java -cp java/saxon9he.jar: net.sf.saxon.Query -q:xq.txt -o:www/xq.html !indent=yes !encoding=utf-8
java : java_compilation
	cd java && java Noms_unites_enseignement > Noms_unites_enseignement_out.txt && cd ..
java_compilation :
	cd java && javac Noms_unites_enseignement.java && cd ..
clean:
	rm -R www && rm tidy_out.txt && rm master.xml && rm java/Noms_unites_enseignement_out.txt && rm java/Noms_unites_enseignement.class