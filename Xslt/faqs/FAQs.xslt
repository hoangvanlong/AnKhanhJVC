<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--<FAQsList>
		<ModuleTitle>Hỏi đáp</ModuleTitle>
		<PageTitle>Hỏi đáp</PageTitle>
		<SubmitLink>Hỏi đáp</SubmitLink>
		<Culture>vi-VN</Culture>
		<FAQs>
			<Question>Câu hỏi</Question>
			<Answer>Trả lời</Answer>
			<Viewed>0</Viewed>
		</FAQs>
	</FAQsList>-->

<xsl:template match="/">
	<div class="list-detail mt-5 mt-lg-0">
		<xsl:apply-templates select="/FAQsList/FAQs"></xsl:apply-templates>
	</div>
			
</xsl:template>

<xsl:template match="FAQs">
	<div class="item">
		<div class="content">
			<h5>
				<xsl:value-of select="Question" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h5>
		</div>
		<div class="lead">
			<figure>
				<figcaption>
					<xsl:value-of select="Answer" disable-output-escaping="yes"></xsl:value-of>
				</figcaption>
			</figure>
		</div>
	</div>
</xsl:template>
</xsl:stylesheet>