<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="index">
		<xsl:result-document href="../www/index.html">
			<html>
				<xsl:attribute name="xml:lang">en</xsl:attribute>
				<xsl:attribute name="lang">en</xsl:attribute>
				<head>
					<title><xsl:text>AMU | Accueil</xsl:text></title>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
					<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
				</head>
				<body>
					<div id="allPage">
						<!--==========< begin header ==========-->
						<div id="header">
							<a target="_blank" href="http://sciences.univ-amu.fr" class="header-univmed"></a>
							<a href="index.html" class="header-masterinfo"></a>
							<a target="_blank" href="http://www.univ-amu.fr" class="header-univprov"></a>
						</div>
						<!--========== end header >==========-->
						<!--==========< begin leftFrame ==========-->
						<div id="leftFrame">
							<div id="menu">
								<a class="menu1 menu-active" href="index.html"><span>Parcours</span></a>
									<xsl:for-each select="//parcours">
										<a class="menu2 menu-normal" href="parcours/{attribute::code}.html">
											<xsl:text>&#160;&#160;&#160;&#160;&#160;>&#160;</xsl:text><xsl:value-of select="attribute::code"/>
										</a>
									</xsl:for-each>
								<a class="menu1 menu-normal" href="unites/liste_unites.html"><span>les unites</span></a>
								<a class="menu1 menu-normal" href="intervenants/liste_intervenants.html"><span>Les intervenants</span></a>
								<a class="menu1 menu-normal" href="contactez_nous.html"><span>Contactez-nous</span></a>
							</div>
						</div>
						<!--========== end leftFrame >==========-->
						<!--==========< begin content ==========-->
						<div id="content">
							<h1 id="idhtex-h1-1">Master Informatique de Marseille</h1>
							<center><b>habilitation 2012 / 2018</b></center>
							<center>
								<p><b><a target="_blank" href="http://dii.univ-mrs.fr" shape="rect">Département Informatique et Interactions</a><br clear="none"/>
								<a target="_blank" href="http://sciences.univ-amu.fr">Faculté des Sciences</a></b></p>
								<p><b><a target="_blank" href="http://www.univ-amu.fr" shape="rect">Aix-Marseille Université</a><br clear="none"/></b></p>
							</center>
							<div class="h2" id="masterinfo">Présentation du Master «&#160;Informatique&#160;»</div>
							<p>Le master «&#160;informatique&#160;» a pour vocation la formation de professionnels de l'informatique au niveau bac+5. L'objectif est d'offrir aux étudiants une large palette de compétences et de savoirs afin de rendre accessible des emplois de haut niveau dans le monde de la recherche, dans celui de l'entreprise ou dans d'autres organisations. Notre ambition est de former des étudiants dont les compétences sont tout à fait comparables à celles acquises dans les meilleurs écoles d'ingénieurs.</p>
							<p>Le Master informatique repose sur plus de 25&#160;ans d'expérience d'enseignement d'informatique sur l'Université d'Aix-Marseille (maîtrise, DEA et DESS en informatique) et s'est structuré lors du passage au LMD. Si vous n'êtes pas familier des formations organisées suivant le schéma Licence/Master/Doctorat.</p>
							<p>Le Master Informatique s'appuie principalement sur les compétences de deux laboratoires reconnus&#160;:</p>
							<ul>
								<li><a target="_blank" href="http://www.lif.univ-mrs.fr" shape="rect">Laboratoire d'Informatique Fondamentale de Marseille (LIF)</a></li>
								<li><a target="_blank" href="http://www.lsis.org/" shape="rect">Laboratoire des Sciences de l'Information et des Systèmes (LSIS)</a></li>
							</ul>
							<p>La master est enseigné à Marseille sur le <b>campus de Luminy</b> (site sud) et sur le <b>campus de l'Étoile</b> (site nord) qui regroupe Château-Gombert et Saint-Jérôme.</p>
							<p>Notre offre de formation au niveau Bac+5 est organisée autour de deux axes forts&#160;:</p>
							<ul>
								<li> Le master est structuré sous la forme d'une <a href="parcours/M1.html" shape="rect"><b>première année commune (M1)</b></a> et dupliquée sur les sites sud et nord, suivie d'une deuxième année de spécialisation (M2).
								</li>
							</ul>
							<ul>
								<li>La <b>deuxième année</b> est composée de sept spécialités. Deux à finalité recherche, et cinq à finalité professionnelle. Certaines spécialités sont ensuite déclinées en plusieurs parcours. Ces spécialités sont localisées à Luminy ou à Saint-Jérôme en fonction des compétences locales.
								</li>
							</ul>
							<div class="h2" id="parcours">Spécialités et options</div>
							<p>Le tableau ci-dessous détaille l'architecture du Master Informatique.</p>
							<center>	
								<table summary="">
									<tr><th colspan="6" rowspan="1">Master Informatique</th></tr>
									<tr><!-- ===== Table-HEAD ================== -->
										<th rowspan="1" colspan="1">Années</th>
										<th rowspan="1" colspan="1">Spécialités</th>
										<th rowspan="1" colspan="1">Parcours</th>
										<th rowspan="1" colspan="1">Code</th>
										<th rowspan="1" colspan="1">Finalité</th>
										<th rowspan="1" colspan="1">Lieu</th>
									</tr>
									<tr><!-- ===== M1 ================== -->
										<td class="center" rowspan="1" colspan="1">M1<br clear="none"/>Bac+4</td>
										<td colspan="2" rowspan="1"><a href="parcours/M1.html" shape="rect">Tronc commun (<b>M1</b>)</a></td>
										<td class="center bold" rowspan="1" colspan="1">M1</td>
										<td class="center" rowspan="1" colspan="1">-</td>
										<td class="center" rowspan="1" colspan="1">Luminy et<br clear="none"/>l'Étoile</td>
									</tr>
									<tr><!-- ===== FSIL ================== -->
										<td class="center" rowspan="12" colspan="1">M2<br clear="none"/>Bac+5</td>
										<td rowspan="2" colspan="1"><a href="#" shape="rect">Fiabilité, sécurité et intégration logicielle (<b>FSIL</b>)</a></td>
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Fiabilité et sécurité informatique (<b>FSI</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">FSI</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== ISL ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Intégration de Systèmes Logiciels (<b>ISL</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">ISL</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== GL ================== -->
										<td rowspan="1" colspan="2"><a href="parcours/GL.html" shape="rect">Génie logiciel (<b>GL</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">GL</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">St-Jérôme</td>
									</tr>
									<tr><!-- ===== ID ================== -->
										<td rowspan="2" colspan="1"><a href="#" shape="rect">Informatique décisionnelle (<b>ID</b>)</a></td>
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Fouille et entrepôts de données (<b>FED</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">FED</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== RO ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Recherche opérationnelle (<b>RO</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">RO</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== IF ================== -->
										<td colspan="2" rowspan="1"><a href="parcours/IF.html" shape="rect">Informatique Fondamentale (<b>IF</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">IF</td>
										<td class="center" rowspan="1" colspan="1">Recherche</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== RIM ================== -->
										<td rowspan="1" colspan="2"><a href="parcours/RIM.html" shape="rect">Recherche d'informations multimédia (<b>RIM</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">RIM</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== SIR ================== -->
										<td rowspan="1" colspan="2"><a href="parcours/SIR.html" shape="rect">Systèmes d'informations répartis (<b>SIR</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">SIR</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">St-Jérôme</td>
									</tr>
									<tr><!-- ===== SIS ================== -->
										<td rowspan="3" colspan="1"><a href="#" shape="rect">Sciences de l'information et des systèmes (<b>SIS</b>)</a></td>
										<td rowspan="1" colspan="1"><a href="parcours/INF.html" shape="rect">Informatique (<b>INF</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">INF</td>
										<td class="center" rowspan="1" colspan="1">Recherche</td>
										<td class="center" rowspan="1" colspan="1">St-Jérôme</td>
									</tr>
									<tr><!-- ===== IMAGE ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Image</a></td>
										<td class="bold center" rowspan="1" colspan="1">IMA</td>
										<td class="center" rowspan="1" colspan="1">Recherche</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== SYSTEMES ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Systèmes</a></td>
										<td class="bold center" rowspan="1" colspan="1">SYS</td>
										<td class="center" rowspan="1" colspan="1">Recherche</td>
										<td class="center" rowspan="1" colspan="1">St-Jérôme</td>
									</tr>
								</table>
							</center>
							<p>Le master est destiné aux étudiants ayant obtenu une Licence d'Informatique ou un diplôme équivalent.</p>
							<div class="h2" id="debouches">Débouchés et effectifs</div>
							<p>L'effectif du Tronc Commun (M1) est estimé à 150 étudiants. Une maîtrise d'Informatique sera délivrée à l'issue de cette première année.</p>
							<p>Les spécialités à finalité professionnelle du Master débouchent sur des emplois de niveau ingénieur et chef de projet en informatique. L'effectif prévu pour ces spécialités est d'une centaine d'étudiants (15 à 20 par parcours).</p>
							<p>A l'issue des spécialités à finalité recherche, l'étudiant a le choix entre préparer une thèse de doctorat, ce qui lui ouvre le chemin vers les organismes publics d'enseignement supérieur et de recherche, et/ou occuper tout type de poste impliquant un travail de recherche, dans un département de recherche et développement par exemple, en France ou à l'étranger. L'effectif prévu pour ces spécialités est de 50 places.</p>
							<div class="h2" id="intro.lmd">Descriptif rapide du système L.M.D.</div>
							<p>Le L.M.D. est structuré principalement en deux grades&#160;: la licence (trois années L1, L2 et L3) et le master (deux années M1 et M2). Une année correspond à 60 crédits répartis en deux semestres de 30 crédits chacun. Ces 30 crédits sont obtenus en suivant des unités d'enseignement (UE) de 3 ou 6 crédits. Un crédit représente 10h de travail encadrées. Une année est donc prévue pour 600h. Le schéma ci-dessous explique les équivalences entre anciennes et nouvelles formations.</p>
							<center>
								<table summary="">
									<tr>
										<th rowspan="1" colspan="1">Année</th>
										<th rowspan="1" colspan="1">Ancienne formation</th>
										<th colspan="3" rowspan="1">Nouvelle formation</th>
									</tr>
									<tr>
										<td rowspan="2" colspan="1">Bac+1</td>
										<td rowspan="4" colspan="1">DEUG</td>
										<td rowspan="6" colspan="1">Licence</td>
										<td rowspan="2" colspan="1">L1</td>
										<td rowspan="1" colspan="1">S1</td>
									</tr>
									<tr><td rowspan="1" colspan="1">S2</td></tr>
									<tr>
										<td rowspan="2" colspan="1">Bac+2</td>
										<td rowspan="2" colspan="1">L2</td>
										<td rowspan="1" colspan="1">S3</td>
									</tr>
									<tr><td rowspan="1" colspan="1">S4</td></tr>
									<tr>
										<td rowspan="2" colspan="1">Bac+3</td>
										<td rowspan="2" colspan="1">Licence</td>
										<td rowspan="2" colspan="1">L3</td>
										<td rowspan="1" colspan="1">S5</td>
									</tr>
									<tr><td rowspan="1" colspan="1">S6</td></tr>
									<tr>
										<td rowspan="2" colspan="1">Bac+4</td>
										<td rowspan="2" colspan="1">Maîtrise</td>
										<td rowspan="4" colspan="1">Master</td>
										<td rowspan="2" colspan="1">M1</td>
										<td rowspan="1" colspan="1">S1</td>
									</tr>
									<tr><td rowspan="1" colspan="1">S2</td></tr>
									<tr>
										<td rowspan="2" colspan="1">Bac+5</td>
										<td rowspan="2" colspan="1">D.E.A. / D.E.S.S.</td>
										<td rowspan="2" colspan="1">M2</td>
										<td rowspan="1" colspan="1">S3</td>
									</tr>
									<tr><td rowspan="1" colspan="1">S4</td></tr>
								</table>
							</center>
							<p>Les parcours de licence ou de master sont rangés dans un arbre à trois ou quatre niveaux. A la racine on trouve les domaines qui sont subdivisés en mentions. Les mentions peuvent être déclinées en spécialités elles mêmes contenant des options.</p>
						</div>
						<!--========== end content >==========-->
						<!--==========< begin footer ==========-->
						<xsl:copy-of select="$footer"/>
						<!--========== end footer >==========-->
					</div>
				</body>
			</html>
		</xsl:result-document>
	</xsl:template>
</xsl:stylesheet>