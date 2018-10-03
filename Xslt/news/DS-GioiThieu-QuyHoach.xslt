<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<xsl:choose>
			<xsl:when test="position() = 1">
				<div class="row mb-4 text-center">
					<div class="col-lg-6 mb-4 mb-lg-0">
						<figure>
							<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							</img>
						</figure>
					</div>
					<div class="col-lg-6 text-left">
						<div class="box-content">
							<h3 class="brief-content">
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>

				</div>
			</xsl:when>

			<xsl:when test="position() = 2">
				<div class="row mb-4">
					<div class="col">
						<h3 class="brief-content text-left mb-4 mb-lg-5">
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>