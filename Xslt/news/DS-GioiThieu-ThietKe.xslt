<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates></div>
	</xsl:template>

	<xsl:template match="News">

		<div class="col-lg-6 text-left mb-4">
			<div class="box-content">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				<h3 class="brief-content">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h3>

				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<div class="col-lg-6 mb-4">
			<div class="box-img">
				<img class="img-fluid">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>