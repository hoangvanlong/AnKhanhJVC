<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" ></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="canhcam-jvc-1">
					<article class="container">
							<h1 class="ankhanh-title">
								<xsl:value-of select="Title"></xsl:value-of>
							</h1>
							<div class="row">
								<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
							</div>
					</article>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-lg-6">
			<div class="text">
				
				 <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="text">
				 <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<div class="col-12 position-relative">
			<div class="img-bg">
				<img class="img-fluid">
					<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>