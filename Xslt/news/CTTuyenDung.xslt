<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		 <section class="canhcam-ankhanh-recruiment-detail-r-1">
			<article class="recruiment-details">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="news-read">
								<div class="row title-news">
									<div class="col-12">
										<h1>
											<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
										</h1>
									</div>
									<div class="col-12 calendar"><i class="fa fa-calendar"></i>
										<time>
											<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
										</time>
									</div>
									<div class="content">
										<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
									</div>
									<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
						</div>
						 <div class="col-lg-3 rela-news">
							<div class="row">
								<div class="col-12 othernews">
									<h2 class="text-uppercase">
									<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
									</h2>
								</div>
							</div>
							<div class="row">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>

	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-12 item-news">
			<div class="calendar">
				<a class="item" href="javascript:void(0)">
					<div class="box">
						<i class="fa fa-calendar"></i>
						<time>
							<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
						</time>
						<h3>
							<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
					</div>
				</a>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
