<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="support-home" bg-img="./img/bg/bg-splendora.png">
            <div class="container bg-white pl-lg-5 pr-lg-5">
                <div class="row mb-4">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="News">
        <div class="col-12 text-center">
            <h1 class="h1 text-uppercase">
                <xsl:value-of select="Title"></xsl:value-of>
            </h1>
            <figure>
                <figcaption class="box-content">
                    <p class="content">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </figcaption>
            </figure>
        </div>
        <div class="row mb-5">
            <div class="col-lg-6 mb-4 mb-lg-0">
                <div class="item">
                    <figure>
                        <div class="box-img">
                            <img class="w-100">
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </div>
                    </figure>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="item">
                    <figure>
                        <figcaption>
                            <div class="box-content">
                                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>