<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="contactez_nous">
		<xsl:result-document href="../www/contactez_nous.html">
			<html>
				<xsl:attribute name="xml:lang">en</xsl:attribute>
				<xsl:attribute name="lang">en</xsl:attribute>
				<head>
					<title><xsl:text>AMU | Contactez-Nous</xsl:text></title>
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
								<a class="menu1 menu-normal" href="index.html"><span>Parcours</span></a>
									<xsl:for-each select="//parcours">
										<a class="menu2 menu-normal" href="parcours/{attribute::code}.html">
											<xsl:text>&#160;&#160;&#160;&#160;&#160;>&#160;</xsl:text><xsl:value-of select="attribute::code"/>
										</a>
									</xsl:for-each>
								<a class="menu1 menu-normal" href="unites/liste_unites.html"><span>les unites</span></a>
								<a class="menu1 menu-normal" href="intervenants/liste_intervenants.html"><span>Les intervenants</span></a>
								<a class="menu1 menu-active" href="contactez_nous.html"><span>Contactez-nous</span></a>
							</div>
						</div>
						<!--========== end leftFrame >==========-->
						<!--==========< begin content ==========-->
						<div id="content">
							<h1 id="idhtex-h1-1"><xsl:text>Trouvez-nous</xsl:text></h1>
							<center>
								<div class="map">
									<figure class="img_inner">
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2906.95982772925!2d5.439290575219574!3d43.231301906011495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x909b2f1ed0fb048b!2sFaculty+of+Sciences+of+Luminy!5e0!3m2!1sen!2sfr!4v1520506243552" width="600" height="450" frameborder="0" style="border:0"></iframe>
									</figure>
								</div>
								<address>
									<dl>
										<dt><br/>Université d'Aix-Marseille - Faculté des Sciences<br/>8901 Marmora Road, 3 place Victor Hugo - Case G<br/>13331 Marseille cedex 3<br/><br/>
										</dt>
										<dd><span>Tél. :</span> +33 (0)4 13 55 00 57</dd>
										<dd><span>FAX. :</span> +33 491 396 500</dd>
									</dl>
								</address>
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