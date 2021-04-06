<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="liste_unites">
		<xsl:result-document href="../www/unites/liste_unites.html">
			<html>
				<xsl:attribute name="xml:lang">en</xsl:attribute>
				<xsl:attribute name="lang">en</xsl:attribute>
				<head>
					<title><xsl:text>AMU | Les unités d'enseignements</xsl:text></title>
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
								<a class="menu1 menu-active" href="liste_unites.html"><span>Les unites</span></a>
								<a class="menu1 menu-normal" href="../intervenants/liste_intervenants.html"><span>Les intervenants</span></a>
								<a class="menu1 menu-normal" href="../contactez_nous.html"><span>Contactez-nous</span></a>
							</div>
						</div>
						<!--========== end leftFrame >==========-->
						<!--==========< begin content ==========-->
						<div id="content">
							<h1 id="idhtex-h1-1"><xsl:text>Les unités d'enseignements</xsl:text></h1>
							<h2 id="idhtex-h2-1"><xsl:text>Les unités triées par code</xsl:text></h2>
							<xsl:for-each select="//unite">
								<xsl:sort select="attribute::id"/>
								<a href="{attribute::id}.html">
									<xsl:value-of select="attribute::id"/>
								</a>
								<xsl:text>, </xsl:text>
							</xsl:for-each>
							<h2 id="idhtex-h2-1"><xsl:text>Les unités de Master</xsl:text></h2>
							<center>
								<table summary="">
									<tr>
										<th rowspan="1" colspan="1"><xsl:text>Code</xsl:text></th>
										<th class="center" rowspan="1" colspan="1"><xsl:text>Nome</xsl:text></th>
									</tr>
									<xsl:for-each select="//unite">
										<tr>
											<td rowspan="1" colspan="1">
												<xsl:value-of select="attribute::id"/>
											</td>
											<td rowspan="1" colspan="1">
												&#160;<a href="{attribute::id}.html" shape="rect"><xsl:value-of select="nom"/></a>
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