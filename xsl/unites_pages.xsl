<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:preserve-space elements="nom"/>
	<xsl:key name="item-by-value" match="unite" use="."/>
	<xsl:template name="unites_pages">
		<xsl:variable name="ids_unites" select="distinct-values(//unite/attribute::id)"/>
		<xsl:variable name="unites" select="//unite"/>
		<xsl:variable name="parcours" select="//parcours"/>
		<xsl:variable name="semestres" select="//semestre"/>
		<xsl:for-each select="$ids_unites">
			<xsl:variable name="unite" select="$unites[attribute::id=current()[1]]"/>
			<xsl:variable name="id_unite" select="current()[1]"/>
			<xsl:result-document href="../www/unites/{current()[1]}.html">
				<html>
					<xsl:attribute name="xml:lang">en</xsl:attribute>
					<xsl:attribute name="lang">en</xsl:attribute>
					<head>
						<title><xsl:text>AMU | </xsl:text><xsl:value-of select="distinct-values($unite/nom)"/></title>
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
										<xsl:for-each select="$parcours">
											<a class="menu2 menu-normal" href="../parcours/{attribute::code}.html">
												<xsl:text>&#160;&#160;&#160;&#160;&#160;>&#160;</xsl:text><xsl:value-of select="attribute::code"/>
											</a>
										</xsl:for-each>
									<a class="menu1 menu-normal" href="liste_unites.html"><span>Les unites</span></a>
									<a class="menu1 menu-normal" href="../intervenants/liste_intervenants.html"><span>Les intervenants</span></a>
									<a class="menu1 menu-normal" href="../contactez_nous.html"><span>Contactez-nous</span></a>
								</div>
							</div>
							<!--========== end leftFrame >==========-->
							<!--==========< begin content ==========-->
							<div id="content">
								<h1 id="idhtex-h1-1">
									<xsl:text>Unité d'enseignement&#160;</xsl:text>
									<xsl:value-of select="$id_unite"/><xsl:text>&#160;:</xsl:text><br/>
									<xsl:text>«&#160;</xsl:text><xsl:value-of select="distinct-values($unite/nom)"/><xsl:text>&#160;»</xsl:text>
								</h1>
								<h2 id="idhtex-h2-1"><xsl:text>Description</xsl:text></h2>
								<fieldset class="float-right clear-right" style="width:300px;">
        							<legend>Plan</legend>
									<b><xsl:text>&#160;&#160;Crédits : </xsl:text></b><xsl:value-of select="distinct-values($unite/credits)"/><br/>
									<b><xsl:text>&#160;&#160;Semestre : </xsl:text></b>
									<xsl:variable name="semestre" select="$semestres/descendant::unite[attribute::id=$id_unite]/../.."/>
									<xsl:value-of select="distinct-values($semestre/attribute::id)"/><br/>
									<xsl:if test="$unite/plan!=''">
										<b>
											<xsl:if test="$unite/plan/nbrCours!=''"><xsl:text>&#160;&#160;Cours</xsl:text></xsl:if>
											<xsl:if test="$unite/plan/nbrTD!=''"><xsl:text> /TD</xsl:text></xsl:if>
											<xsl:if test="$unite/plan/nbrTP!=''"><xsl:text> /TP</xsl:text></xsl:if>
											<xsl:text> : </xsl:text>
										</b>
										<xsl:if test="$unite/plan/nbrCours!=''">
											<xsl:value-of select="$unite/plan/nbrCours"/><xsl:text>h</xsl:text>
										</xsl:if>
										<xsl:if test="$unite/plan/nbrTD!=''">
											<xsl:text>/</xsl:text><xsl:value-of select="$unite/plan/nbrTD"/><xsl:text>h</xsl:text>
										</xsl:if>
										<xsl:if test="$unite/plan/nbrTP!=''">
											<xsl:text>/</xsl:text><xsl:value-of select="$unite/plan/nbrTP"/><xsl:text>h</xsl:text>
										</xsl:if>
									</xsl:if>
        						</fieldset>
        						<b><xsl:text>Résumé&#160;:</xsl:text></b>
        						<xsl:choose>
									<xsl:when test="distinct-values($unite/resume/texte)!=''">
										<xsl:for-each-group select="$unite/resume/texte" group-adjacent="boolean(self::p)">
											<xsl:copy-of select="current-group()[1]"/>
										</xsl:for-each-group>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text> nous sommes désolé, mais nous n'avons pas encore de résumé.</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
								<br/><br/>
								<h2 id="idhtex-h2-2"><xsl:text>Apparaît dans les parcours</xsl:text></h2>
								<xsl:for-each select="$parcours/descendant::unite[attribute::id=$id_unite]/../../..">
									<ul>
										<li>
											<a href="../parcours/{attribute::code}.html" shape="rect">
												<xsl:choose>
													<xsl:when test="attribute::code='M1'">
														 <xsl:text>M1 </xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>M2 </xsl:text>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:value-of select="nom"/>
												<xsl:text>&#160;(</xsl:text><xsl:value-of select="attribute::code"/>
												<xsl:text>)</xsl:text>
											</a>
										</li>
									</ul>
								</xsl:for-each>
								<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
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