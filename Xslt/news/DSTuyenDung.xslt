<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-ankhanh-recruitment-r-1">
			<div class="container">
				<div class="row">
					<div class="col-10 mx-auto">
						<h1 class="h1 text-center text-uppercase">
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
						</h1>
					</div>
				</div>
			</div>
			<div class="container">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Vị trí ứng tuyển</th>
							<th>Số lượng ứng tuyển</th>
							<th>Địa điểm</th>
							<th>Hạn nộp hồ sơ</th>
						</tr>
					</thead>
					<tbody>
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</tbody>
				</table>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<tr>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<div class="row">
						<div class="col-xs-12 col-md-10">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</a>
			</td>
			<td>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>