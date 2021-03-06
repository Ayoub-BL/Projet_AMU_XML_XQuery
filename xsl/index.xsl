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
								<p><b><a target="_blank" href="http://dii.univ-mrs.fr" shape="rect">D??partement Informatique et Interactions</a><br clear="none"/>
								<a target="_blank" href="http://sciences.univ-amu.fr">Facult?? des Sciences</a></b></p>
								<p><b><a target="_blank" href="http://www.univ-amu.fr" shape="rect">Aix-Marseille Universit??</a><br clear="none"/></b></p>
							</center>
							<div class="h2" id="masterinfo">Pr??sentation du Master ??&#160;Informatique&#160;??</div>
							<p>Le master ??&#160;informatique&#160;?? a pour vocation la formation de professionnels de l'informatique au niveau bac+5. L'objectif est d'offrir aux ??tudiants une large palette de comp??tences et de savoirs afin de rendre accessible des emplois de haut niveau dans le monde de la recherche, dans celui de l'entreprise ou dans d'autres organisations. Notre ambition est de former des ??tudiants dont les comp??tences sont tout ?? fait comparables ?? celles acquises dans les meilleurs ??coles d'ing??nieurs.</p>
							<p>Le Master informatique repose sur plus de 25&#160;ans d'exp??rience d'enseignement d'informatique sur l'Universit?? d'Aix-Marseille (ma??trise, DEA et DESS en informatique) et s'est structur?? lors du passage au LMD. Si vous n'??tes pas familier des formations organis??es suivant le sch??ma Licence/Master/Doctorat.</p>
							<p>Le Master Informatique s'appuie principalement sur les comp??tences de deux laboratoires reconnus&#160;:</p>
							<ul>
								<li><a target="_blank" href="http://www.lif.univ-mrs.fr" shape="rect">Laboratoire d'Informatique Fondamentale de Marseille (LIF)</a></li>
								<li><a target="_blank" href="http://www.lsis.org/" shape="rect">Laboratoire des Sciences de l'Information et des Syst??mes (LSIS)</a></li>
							</ul>
							<p>La master est enseign?? ?? Marseille sur le <b>campus de Luminy</b> (site sud) et sur le <b>campus de l'??toile</b> (site nord) qui regroupe Ch??teau-Gombert et Saint-J??r??me.</p>
							<p>Notre offre de formation au niveau Bac+5 est organis??e autour de deux axes forts&#160;:</p>
							<ul>
								<li> Le master est structur?? sous la forme d'une <a href="parcours/M1.html" shape="rect"><b>premi??re ann??e commune (M1)</b></a> et dupliqu??e sur les sites sud et nord, suivie d'une deuxi??me ann??e de sp??cialisation (M2).
								</li>
							</ul>
							<ul>
								<li>La <b>deuxi??me ann??e</b> est compos??e de sept sp??cialit??s. Deux ?? finalit?? recherche, et cinq ?? finalit?? professionnelle. Certaines sp??cialit??s sont ensuite d??clin??es en plusieurs parcours. Ces sp??cialit??s sont localis??es ?? Luminy ou ?? Saint-J??r??me en fonction des comp??tences locales.
								</li>
							</ul>
							<div class="h2" id="parcours">Sp??cialit??s et options</div>
							<p>Le tableau ci-dessous d??taille l'architecture du Master Informatique.</p>
							<center>	
								<table summary="">
									<tr><th colspan="6" rowspan="1">Master Informatique</th></tr>
									<tr><!-- ===== Table-HEAD ================== -->
										<th rowspan="1" colspan="1">Ann??es</th>
										<th rowspan="1" colspan="1">Sp??cialit??s</th>
										<th rowspan="1" colspan="1">Parcours</th>
										<th rowspan="1" colspan="1">Code</th>
										<th rowspan="1" colspan="1">Finalit??</th>
										<th rowspan="1" colspan="1">Lieu</th>
									</tr>
									<tr><!-- ===== M1 ================== -->
										<td class="center" rowspan="1" colspan="1">M1<br clear="none"/>Bac+4</td>
										<td colspan="2" rowspan="1"><a href="parcours/M1.html" shape="rect">Tronc commun (<b>M1</b>)</a></td>
										<td class="center bold" rowspan="1" colspan="1">M1</td>
										<td class="center" rowspan="1" colspan="1">-</td>
										<td class="center" rowspan="1" colspan="1">Luminy et<br clear="none"/>l'??toile</td>
									</tr>
									<tr><!-- ===== FSIL ================== -->
										<td class="center" rowspan="12" colspan="1">M2<br clear="none"/>Bac+5</td>
										<td rowspan="2" colspan="1"><a href="#" shape="rect">Fiabilit??, s??curit?? et int??gration logicielle (<b>FSIL</b>)</a></td>
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Fiabilit?? et s??curit?? informatique (<b>FSI</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">FSI</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== ISL ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Int??gration de Syst??mes Logiciels (<b>ISL</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">ISL</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== GL ================== -->
										<td rowspan="1" colspan="2"><a href="parcours/GL.html" shape="rect">G??nie logiciel (<b>GL</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">GL</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">St-J??r??me</td>
									</tr>
									<tr><!-- ===== ID ================== -->
										<td rowspan="2" colspan="1"><a href="#" shape="rect">Informatique d??cisionnelle (<b>ID</b>)</a></td>
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Fouille et entrep??ts de donn??es (<b>FED</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">FED</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== RO ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Recherche op??rationnelle (<b>RO</b>)</a></td>
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
										<td rowspan="1" colspan="2"><a href="parcours/RIM.html" shape="rect">Recherche d'informations multim??dia (<b>RIM</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">RIM</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== SIR ================== -->
										<td rowspan="1" colspan="2"><a href="parcours/SIR.html" shape="rect">Syst??mes d'informations r??partis (<b>SIR</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">SIR</td>
										<td class="center" rowspan="1" colspan="1">Pro.</td>
										<td class="center" rowspan="1" colspan="1">St-J??r??me</td>
									</tr>
									<tr><!-- ===== SIS ================== -->
										<td rowspan="3" colspan="1"><a href="#" shape="rect">Sciences de l'information et des syst??mes (<b>SIS</b>)</a></td>
										<td rowspan="1" colspan="1"><a href="parcours/INF.html" shape="rect">Informatique (<b>INF</b>)</a></td>
										<td class="bold center" rowspan="1" colspan="1">INF</td>
										<td class="center" rowspan="1" colspan="1">Recherche</td>
										<td class="center" rowspan="1" colspan="1">St-J??r??me</td>
									</tr>
									<tr><!-- ===== IMAGE ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Image</a></td>
										<td class="bold center" rowspan="1" colspan="1">IMA</td>
										<td class="center" rowspan="1" colspan="1">Recherche</td>
										<td class="center" rowspan="1" colspan="1">Luminy</td>
									</tr>
									<tr><!-- ===== SYSTEMES ================== -->
										<td rowspan="1" colspan="1"><a href="#" shape="rect">Syst??mes</a></td>
										<td class="bold center" rowspan="1" colspan="1">SYS</td>
										<td class="center" rowspan="1" colspan="1">Recherche</td>
										<td class="center" rowspan="1" colspan="1">St-J??r??me</td>
									</tr>
								</table>
							</center>
							<p>Le master est destin?? aux ??tudiants ayant obtenu une Licence d'Informatique ou un dipl??me ??quivalent.</p>
							<div class="h2" id="debouches">D??bouch??s et effectifs</div>
							<p>L'effectif du Tronc Commun (M1) est estim?? ?? 150 ??tudiants. Une ma??trise d'Informatique sera d??livr??e ?? l'issue de cette premi??re ann??e.</p>
							<p>Les sp??cialit??s ?? finalit?? professionnelle du Master d??bouchent sur des emplois de niveau ing??nieur et chef de projet en informatique. L'effectif pr??vu pour ces sp??cialit??s est d'une centaine d'??tudiants (15 ?? 20 par parcours).</p>
							<p>A l'issue des sp??cialit??s ?? finalit?? recherche, l'??tudiant a le choix entre pr??parer une th??se de doctorat, ce qui lui ouvre le chemin vers les organismes publics d'enseignement sup??rieur et de recherche, et/ou occuper tout type de poste impliquant un travail de recherche, dans un d??partement de recherche et d??veloppement par exemple, en France ou ?? l'??tranger. L'effectif pr??vu pour ces sp??cialit??s est de 50 places.</p>
							<div class="h2" id="intro.lmd">Descriptif rapide du syst??me L.M.D.</div>
							<p>Le L.M.D. est structur?? principalement en deux grades&#160;: la licence (trois ann??es L1, L2 et L3) et le master (deux ann??es M1 et M2). Une ann??e correspond ?? 60 cr??dits r??partis en deux semestres de 30 cr??dits chacun. Ces 30 cr??dits sont obtenus en suivant des unit??s d'enseignement (UE) de 3 ou 6 cr??dits. Un cr??dit repr??sente 10h de travail encadr??es. Une ann??e est donc pr??vue pour 600h. Le sch??ma ci-dessous explique les ??quivalences entre anciennes et nouvelles formations.</p>
							<center>
								<table summary="">
									<tr>
										<th rowspan="1" colspan="1">Ann??e</th>
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
										<td rowspan="2" colspan="1">Ma??trise</td>
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
							<p>Les parcours de licence ou de master sont rang??s dans un arbre ?? trois ou quatre niveaux. A la racine on trouve les domaines qui sont subdivis??s en mentions. Les mentions peuvent ??tre d??clin??es en sp??cialit??s elles m??mes contenant des options.</p>
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