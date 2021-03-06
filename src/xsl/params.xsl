<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:param name="content-extension">xml</xsl:param>
  <xsl:param name="build.time"></xsl:param>
  <xsl:param name="copyright.year">2008</xsl:param>

  <xsl:param name="carrot2.website.url">http://project.carrot2.org</xsl:param>
  <xsl:param name="carrot2.webapp.url">http://search.carrot2.org</xsl:param>
  <xsl:param name="carrot2.webapp.results.url"><xsl:value-of select="$carrot2.webapp.url" />/stable/search</xsl:param>
  <xsl:param name="carrot2.sf.net.url">http://sf.net/projects/carrot2</xsl:param>

  <xsl:param name="carrot-search.website.url">http://carrotsearch.com</xsl:param>
  <xsl:param name="carrot-search.webapp.url">http://search.carrotsearch.com</xsl:param>
  <xsl:param name="carrot-search.webapp.results.url"><xsl:value-of select="$carrot-search.webapp.url" />/carrot2-webapp/search</xsl:param>

</xsl:stylesheet>
