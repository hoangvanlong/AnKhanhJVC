<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />






	<!--Begin Zone-->
	<xsl:template match="/">
		<!-- Call Menu Items -->

		<section class="canhcam-ankhanh-navbar">
			<div class="container navbar-2">
				 <div class="row">
					<div class="col">
						<ul class="nav justify-content-center nav-pills data-select">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</ul>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<!--item-->
		<li class="nav-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="nav-link">
				
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
