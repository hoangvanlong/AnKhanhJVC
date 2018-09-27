<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="canhcam-ankhanh-resident-utility-r-1">
            <article class="gallery-details">
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
                    <div class="row mb-4">
                        <div class="col">
                            <div class="gallery-lists">
                                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>
    </xsl:template>

    <xsl:template match="News">
        <a class="item">
            <xsl:attribute name="href">
                <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="data-sub-html">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <figure>
                <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
                <figcaption>
                    <h2>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </h2>
                    <div class="content">
                        <xsl:value-of select="FullContent"></xsl:value-of>
                    </div>
                </figcaption>
            </figure>
        </a>
    </xsl:template>
</xsl:stylesheet>