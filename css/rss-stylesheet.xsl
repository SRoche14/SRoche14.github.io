<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>RSS Feed</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    .item { border-bottom: 1px solid #ccc; padding: 10px 0; }
                    .title { font-weight: bold; font-size: 18px; }
                    .date { color: gray; font-size: 12px; }
                    .description { margin-top: 5px; }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="rss/channel/title"/></h1>
                <xsl:apply-templates select="rss/channel/item"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="item">
        <div class="item">
            <div class="title">
                <a href="{link}"><xsl:value-of select="title"/></a>
            </div>
            <div class="date">
                <xsl:value-of select="pubDate"/>
            </div>
            <div class="description">
                <xsl:value-of select="description"/>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
