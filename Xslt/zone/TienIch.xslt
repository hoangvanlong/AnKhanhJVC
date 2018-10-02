<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />






	<!--Begin Zone-->
	<xsl:template match="/">
		<!-- Call Menu Items -->
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
	<div class="row no-gutters">
		<div class="col-lg-8 item">
			<xsl:if test="position() mod 2 = 0">
				<xsl:attribute name="class">
					<xsl:text>col-lg-8 item order-lg-1</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<figure>
				<xsl:attribute name="bg-img">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
				<div class="boxzoom">
					<img>
						<xsl:attribute name="src">
                    	<xsl:value-of select="ImageUrl"></xsl:value-of>
             		   </xsl:attribute>
					</img>
				</div>
			</figure>
		</div>
		<div class="col-lg-4 item part-item">
			<a>
				<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<xsl:if test="position() mod 2 = 0">
						<xsl:attribute name="class">
							<xsl:text>reverse</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<figcaption>
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<p class="see-more">
							<xsl:value-of select="/ZoneList/ViewMoreText" />
						</p>
					</figcaption>
				</figure>
			</a>
		</div>
	</div>
	</xsl:template>
</xsl:stylesheet>
