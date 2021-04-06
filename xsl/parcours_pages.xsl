<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:preserve-space elements="nom"/>
	<xsl:template name="parcours_pages">
		<xsl:for-each select="//parcours">
			<xsl:variable name="code_parcours" select="attribute::code"/>
			<xsl:result-document href="../www/parcours/{attribute::code}.html">
				<html>
					<xsl:attribute name="xml:lang">en</xsl:attribute>
					<xsl:attribute name="lang">en</xsl:attribute>
					<head>
						<title><xsl:text>AMU | </xsl:text><xsl:value-of select="string(nom)"/></title>
						<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
						<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" />
					</head>
					<body>
						<div id="allPage">
						<!--==========< begin header ==========-->
						<div id="header">
							<a target="_blank" href="http://sciences.univ-amu.fr" class="header-univmed"></a>
							<a href="../index.html" class="header-masterinfo"></a>
							<a target="_blank" href="http://www.univ-amu.fr" class="header-univprov"></a>
						</div>
						<!--========== end header >==========-->
						<!--==========< begin leftFrame ==========-->
							<div id="leftFrame">
								<div id="menu">
									<a class="menu1 menu-normal" href="../index.html"><span>Parcours</span></a>
										<xsl:for-each select="//parcours">
											<xsl:choose>
												<xsl:when test="attribute::code=$code_parcours">
													<a class="menu2 menu-active" href="{attribute::code}.html">
														<xsl:text>&#160;&#160;&#160;&#160;&#160;>&#160;</xsl:text><xsl:value-of select="attribute::code"/>
													</a>
												</xsl:when>
												<xsl:otherwise>
													<a class="menu2 menu-normal" href="{attribute::code}.html">
														<xsl:text>&#160;&#160;&#160;&#160;&#160;>&#160;</xsl:text><xsl:value-of select="attribute::code"/>
													</a>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									<a class="menu1 menu-normal" href="../unites/liste_unites.html"><span>Les unites</span></a>
									<a class="menu1 menu-normal" href="../intervenants/liste_intervenants.html"><span>Les intervenants</span></a>
									<a class="menu1 menu-normal" href="../contactez_nous.html"><span>Contactez-nous</span></a>
								</div>
							</div>
							<!--========== end leftFrame >==========-->
							<!--==========< begin content ==========-->
							<div id="content">
								<h1 id="idhtex-h1-1">
									<xsl:value-of select="./nom"/>
									<xsl:text>&#160;(</xsl:text>
									<xsl:value-of select="attribute::code"/>
									<xsl:text>)</xsl:text>
								</h1>
								<h2 id="idhtex-h2-1"><xsl:text>Présentation et objectifs</xsl:text></h2>
								<xsl:variable name="id_responsable" select="responsable/attribute::ref"/>
									<p>
										<b><xsl:text>Responsable(s) : </xsl:text></b>
										<xsl:for-each select="//intervenant[attribute::id=$id_responsable]">
											<ul>
												<li>
													<a href="../intervenants/{attribute::id}.html" shape="rect">
														<xsl:value-of select="nom"/>
													</a>
												</li>
											</ul>
										</xsl:for-each>
									</p>
									<p><b><xsl:text>Lieu d'enseignement :</xsl:text></b></p>
									<ul>
										<xsl:for-each select="lieu">
											<li>
												<xsl:text>Campus de </xsl:text><xsl:value-of select="."/>
											</li>
										</xsl:for-each>
									</ul>
									<p>
										<b><xsl:text>Description :</xsl:text></b><br/>
										<xsl:apply-templates select="description/texte"/>
									</p>
								<h2 id="idhtex-h2-2"><xsl:text>Programme des enseignements</xsl:text></h2>
									<xsl:for-each select="./semestre">
										<p>
											<b><xsl:text>Programme du semestre </xsl:text><xsl:value-of select="attribute::id"/><xsl:text> : </xsl:text></b>
										</p>
										<ul>
											<li>Unités obligatoires
												<ul>
													<xsl:for-each select="unites_obligatoires/unite">
														<li>
															<a href="../unites/{attribute::id}.html" shape="rect">
																<xsl:value-of select="nom"/><xsl:text> - </xsl:text>
																<xsl:value-of select="attribute::id"/>
																<xsl:text> (</xsl:text>
																<xsl:value-of select="credits"/>
																<xsl:text> crédits)</xsl:text>
															</a>
														</li>
													</xsl:for-each>
												</ul>
											</li>
											<xsl:for-each select="./unites_optionnelles">
												<li>
													<xsl:value-of select="attribute::credits_options"/><xsl:text> crédits à choisir</xsl:text>
													<ul>
														<xsl:for-each select="unite">
															<li>
																<a href="../unites/{attribute::id}.html" shape="rect">
																	<xsl:value-of select="nom"/>
																	<xsl:text> - </xsl:text>
																	<xsl:value-of select="attribute::id"/>
																	<xsl:text> (</xsl:text>
																	<xsl:value-of select="credits"/>
																	<xsl:text> crédits)</xsl:text>
																</a>
															</li>
														</xsl:for-each>
													</ul>
												</li>
											</xsl:for-each>
										</ul>
									</xsl:for-each>
								<xsl:if test="debouches!=''">
									<h2 id="idhtex-h2-3"><xsl:text>Débouchés</xsl:text></h2>
										<p><xsl:apply-templates select="./debouches/texte"/></p>
								</xsl:if>
							</div>
							<!--========== end content >==========-->
							<!--==========< begin footer ==========-->
							<xsl:copy-of select="$footer"/>
							<!--========== end footer >==========-->
						</div>
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>