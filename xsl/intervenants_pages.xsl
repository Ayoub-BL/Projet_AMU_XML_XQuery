<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="intervenants_pages">
		<xsl:for-each select="//intervenant">
			<xsl:result-document href="../www/intervenants/{attribute::id}.html">
				<html>
					<xsl:attribute name="xml:lang">en</xsl:attribute>
					<xsl:attribute name="lang">en</xsl:attribute>
					<head>
						<title><xsl:text>AMU | Fiche de </xsl:text><xsl:value-of select="string(nom)"/></title>
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
									<a class="menu1 menu-normal" href="liste_intervenants.html"><span>Les intervenants</span></a>
									<a class="menu1 menu-normal" href="../contactez_nous.html"><span>Contactez-nous</span></a>
								</div>
							</div>
							<!--========== end leftFrame >==========-->
							<!--==========< begin content ==========-->
							<div id="content">
								<h1 id="idhtex-h1-1">
									<xsl:text>Fiche de</xsl:text><br/>
									<xsl:value-of select="./nom"/>
								</h1>
								<h2 id="idhtex-h2-1"><xsl:text>Présentation</xsl:text></h2>
								<br/>
									<xsl:if test="adresse/mail!=''">
										<p>
											<b><xsl:text>E-Mail : </xsl:text></b>
											<a target="_blank" href="mailto:{adresse/mail}"><xsl:value-of select="adresse/mail"/></a>
										</p>
									</xsl:if>
									<xsl:if test="adresse/site_web!=''">
									<p>
										<b><xsl:text>Adresse web : </xsl:text></b>
										<a target="_blank" href="{adresse/site_web}"><xsl:value-of select="adresse/site_web"/></a>
									</p>
								</xsl:if>
									<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
									<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
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