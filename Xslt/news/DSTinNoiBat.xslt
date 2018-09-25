<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="canhcam-ankhanh-news-n-1">
			<article class="news-list">
				<div class="container">
					<div class="row"> 
						<div class="col-10 mx-auto">
							<h1 class="h1 text-center text-uppercase">
								<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
							</h1>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row" id="products">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>

	</xsl:template>


	<xsl:template match="News">
			<div class="col-sm-6 col-lg-4">
				<a class="item">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<img class="w-100 img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
						<figcaption class="box">
							<div class="row no-gutters text">
								<div class="col-2 date"> 
									<p class="day">
									<xsl:value-of select="CreatedDD" />
									</p>
									<time>
										<xsl:value-of select="CreatedMM" />
										<xsl:text>/</xsl:text>
										<xsl:value-of select="CreatedYYYY" />
									</time>
								</div>
								<div class="col-10 news-title">
									<h3>
										<xsl:value-of select="Title"></xsl:value-of>
									</h3>
								</div>
							</div>
							<p class="content">
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</a>
			</div>
		

	
	</xsl:template>
</xsl:stylesheet>
