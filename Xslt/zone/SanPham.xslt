<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />






	<!--Begin Zone-->
	<xsl:template match="/">
		<!-- Call Menu Items -->

		<section class="product-home" bg-img="/Data/Sites/1/media/b_3.png">
			<div class="container fixed-width bg-white">
				<div class="row">
					<div class="col-12 text-center">
						<h1 class="h1 text-uppercase">
							<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
						</h1>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>

	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<!--item-->
		<div class="col-md-6 col-lg-4 mb-4">
			<a class="link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="item" >
					<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<figcaption class="box-content">
							<h2 class="h2">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</figcaption>
					</figure>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
