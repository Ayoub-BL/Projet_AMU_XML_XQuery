<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="liste_intervenants">
		<xsl:result-document href="../www/intervenants/liste_intervenants.html">
			<html>
				<xsl:attribute name="xml:lang">en</xsl:attribute>
				<xsl:attribute name="lang">en</xsl:attribute>
				<head>
					<title><xsl:text>AMU | Les intervenants du Master Informatiques</xsl:text></title>
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
										<a class="menu2 menu-normal" href="../parcours/{attribute::code}.html">
											<xsl:text>&#160;&#160;&#160;&#160;&#160;>&#160;</xsl:text><xsl:value-of select="attribute::code"/>
										</a>
									</xsl:for-each>
								<a class="menu1 menu-normal" href="../unites/liste_unites.html"><span>Les unites</span></a>
								<a class="menu1 menu-active" href="liste_intervenants.html"><span>Les intervenants</span></a>
								<a class="menu1 menu-normal" href="../contactez_nous.html"><span>Contactez-nous</span></a>
							</div>
						</div>
						<!--========== end leftFrame >==========-->
						<!--==========< begin content ==========-->
						<div id="content">
							<h1 id="idhtex-h1-1"><xsl:text>Les intervenants du Master Informatique</xsl:text></h1>
							<h2 id="idhtex-h2-1"><xsl:text>Une première liste</xsl:text></h2>
							<center>
								<table summary="">
									<tr>
										<th rowspan="1" colspan="1">Nom</th>
										<th rowspan="1" colspan="1">Courriel</th>
										<th rowspan="1" colspan="1">Web</th>
									</tr>
									<xsl:for-each select="//intervenant">
										<tr>
											<td rowspan="1" colspan="1">
												&#160;<a href="{attribute::id}.html" shape="rect"><xsl:value-of select="string(nom)"/></a>
											</td>
											<td class="center" rowspan="1" colspan="1">
												&#160;<a target="_blank" href="mailto:{adresse/mail}" shape="rect"><img style="border: 0px;" alt="Mail" src="../img/icon_email.gif"/></a>&#160;
											</td>
											<td rowspan="1" colspan="1">
												&#160;<a target="_blank" href="{adresse/site_web}" shape="rect"><xsl:value-of select="adresse/site_web"/></a>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</center>
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