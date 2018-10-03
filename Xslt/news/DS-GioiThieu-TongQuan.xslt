<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-introduce-detail-1" id="canhcam-detail-section-1" bg-img="./img/bg/bg-splendora.png">
			<div class="container fixed-width bg-white">
				<div class="slide">
					<h2 class="text-center text-uppercase title">
						<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<div class="row text-center text-md-left">
						<div class="col-12 mb-4">
							<h3 class="brief-content">
								<xsl:value-of select="/NewsList/News/Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</div>
					</div>
					<div class="row mb-4 text-center text-md-left">
						<div class="col-md-6">
							<xsl:value-of select="/NewsList/News/BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="col-md-6">
							<xsl:value-of select="/NewsList/News/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<article class="carousel-2">
								<xsl:apply-templates select="/NewsList/News/NewsImages" mode="Content"></xsl:apply-templates>
							</article>
						</div>
					</div>
					<div class="row">
						<div class="col mb-5">
							<article class="owl-carousel carousel-1 owl-theme list-items">
								<xsl:apply-templates select="/NewsList/News/NewsImages" mode="Nav"></xsl:apply-templates>
							</article>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Content">

		<div class="item">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-slider">
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="owl-carousel owl-theme">
				<div class="itemc">
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<h4 class="title-slider">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h4>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Nav">

		<div class="item">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-to">
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<figure class="w-100">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>