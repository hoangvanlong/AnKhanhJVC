<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:choose>
            <xsl:when test="position()=1">
                <h1 class="ankhanh-title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </h1>
                <div class="row item-first mb-5">
                    <xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
                </div>

            </xsl:when>
            <xsl:when test="position()=2">
                <div class="row item-second mb-5">
                    <xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
                </div>
            </xsl:when>
            <xsl:when test="position()=3">
                <div class="row item-third">
                    <xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
                </div>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="News" mode="ZoneNews1">
        <div class="col-lg-8">
            <div class="text text-first">
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="text text-second">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="News" mode="ZoneNews2">

        <div class="col-12">
            <div class="row d-flex align-items-center">
                <div class="col-md-3 item mb-4 mb-md-0">
                    <figure class="d-flex justify-content-center">
                        <img class="img-fluid">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </figure>
                </div>
                <div class="col-md-9 item mb-4 mb-md-0">
                    <div class="text text-first">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col item">
                    <div class="text text-second">
                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>

    </xsl:template>

    <xsl:template match="News" mode="ZoneNews3">

        <div class="col-12">
            <div class="row d-flex align-items-center">
                <div class="col-md-3 item mb-4 mb-md-0">
                    <figure class="d-flex justify-content-center">
                        <img class="img-fluid">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </figure>
                </div>
                <div class="col-md-9 item mb-4 mb-md-0">
                    <div class="text text-first">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col item">
                    <div class="text text-second">
                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>

    </xsl:template>
</xsl:stylesheet>