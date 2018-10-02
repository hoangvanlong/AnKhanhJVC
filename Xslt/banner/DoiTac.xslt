<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />







	<!-- Begin Banner Father -->
	<xsl:template match="/">
		<section class="canhcam-jvc-4">
			<div class="container">
				<h1 class="ankhanh-title">
					  <xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
				</h1>
				<div class="row">
			<!-- Call Items -->
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<!-- Item -->
	<xsl:template match="Banner">
		<div class="col-20 col-sm-4 col-6">
			<div class="partner-wrap">
				<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
