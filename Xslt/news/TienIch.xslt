<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="row no-gutters">
			 <div class="row">
				<xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
		</div>
    </xsl:template>

    <xsl:template match="News">
		<div class="col-lg-8 item">
			<figure>
				<xsl:attribute name="bg-img">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
				<div class="boxzoom">
					<img alt="">
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
					<figcaption>
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<p class="see-more">Xem thêm</p>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>