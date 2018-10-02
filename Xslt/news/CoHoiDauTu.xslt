<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="canhcam-jvc-5">
            <div class="container">
                <h1 class="ankhanh-title">
                    <xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
                </h1>
                <div class="row">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="News">
        <div class="col-12">
            <div class="text">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
        <div class="col-12">
            <div class="owl-carousel cohoidautu">
                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
            </div>
        </div>
        <div class="col-12">
            <div class="text">
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="NewsImages">
        <div class="item">
            <figure>
                <img class="img-fluid">
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                </img>
                <figcaption>
                    <h3>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h3>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>