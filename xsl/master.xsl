<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"
				indent="yes"
				version="4.01"
				encoding="UTF-8"
				doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
				doctype-system="DTD/xhtml1-strict.dtd"/>
	<xsl:include href="index.xsl"/>
	<xsl:include href="parcours_pages.xsl"/>
	<xsl:include href="unites_pages.xsl"/>
	<xsl:include href="liste_unites.xsl"/>
	<xsl:include href="intervenants_pages.xsl"/>
	<xsl:include href="liste_intervenants.xsl"/>
	<xsl:include href="contactez_nous.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:template match="/">
		<xsl:call-template name="index"/>
		<xsl:call-template name="parcours_pages"/>
		<xsl:call-template name="unites_pages"/>
		<xsl:call-template name="liste_unites"/>
		<xsl:call-template name="intervenants_pages"/>
		<xsl:call-template name="liste_intervenants"/>
		<xsl:call-template name="contactez_nous"/>
	</xsl:template>
</xsl:stylesheet>