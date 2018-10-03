<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />




	<!--Begin Zone-->
	<xsl:template match="/">
	
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h1 class="h1 text-center text-uppercase">
						<xsl:value-of select="/ZoneList/RootTitle"></xsl:value-of>
						</h1>
					</div>
				</div>
				<div class="row justify-content-center no-gutters">
					<div class="col-6 col-md-3 year">
						<p>Năm </p>
						<select class="yearProgress">
							<option value="">Năm</option>
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</select>
					</div>
				</div>
			</div>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<!--item-->
		<option>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>

</xsl:stylesheet>