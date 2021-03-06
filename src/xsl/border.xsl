<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/page">
<html>
  <head>
    <title>Carrot2 - Open Source Search Results Clustering Engine</title>
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />

    <meta name="description" content="Carrot2 is an Open Source Search Results Clustering Engine. It can automatically organize (cluster) search results into thematic categories." />
    <meta name="keywords" content="carrot2 framework, document clustering engine, search results clustering, text mining, open source, free software, bsd license" />
    <meta name="copyright" content="Carrot2 Project, Stanislaw Osinski, Dawid Weiss" />
    <meta name="author" content="Carrot2 Project, Stanislaw Osinski, Dawid Weiss" />
	
    <meta name="rating" content="GENERAL" />
    <meta name="MSSmartTagsPreventParsing" content="true" />
	
    <meta http-equiv="cache-control" content="public" />
    <meta http-equiv="imagetoolbar" content="no" />
	
    <link rel="shortcut icon" href="favicon.ico" />
	
    <xsl:apply-templates select="/page/head" />
    <link rel="stylesheet" href="css/screen.css" type="text/css" media="all" title="Default" />
  </head>

  <body>
    <xsl:if test="@section">
      <xsl:attribute name="id"><xsl:value-of select="@section" /></xsl:attribute>
    </xsl:if>
    <div id="results-utils">
      <a href="{$carrot2.website.url}">About</a> |
      <a href="contact.{$content-extension}">Contact</a> |
      <a href="{$carrot2.sf.net.url}">Carrot2 @ sf.net</a> |
      <a href="{$carrot2.webapp.url}">Search Clustering Engine</a> |
      <a href="{$carrot-search.website.url}">Carrot Search</a>
    </div>

    <table id="heading"><tr><td><h1><xsl:apply-templates select="heading" /></h1></td></tr></table>
    
    <table style="height: 100%; width: 100%">
      <tr>
        <td>
          <table style="width: 100%; margin-top: 10px">
            <tr>
              <td id="logo" rowspan="5"><a href="{$carrot2.website.url}"><img src="img/carrot2-logo.gif" alt="Carro2 Project logo" /></a></td>
            </tr>

            <tr>
              <td colspan="3" id="top-space" />
            </tr>

            <tr>
              <td colspan="2"><img alt="..." src="img/top-stroke-1.gif" /></td>
              <td><img alt="..." src="img/top-stroke-2.gif" /></td>
              <td id="top-stroke-bg"></td>
            </tr>

            <tr>
              <td><a href="{$carrot2.website.url}"><img alt="Carrot2 Project" src="img/carrot2-text.gif" /></a></td>
              <td><img alt="..." src="img/top-header-1.gif" /></td>
              <td rowspan="2" colspan="2" id="top-header-space">
                <img alt="..." src="img/top-header-2.gif" />
              </td>
            </tr>

            <tr>
              <td colspan="2"><a href="{$carrot2.website.url}"><img alt="Carrot2: open source framework for building search clustering engines" src="img/carrot2-tagline.gif" /></a></td>
            </tr>
          </table>
        </td>
      </tr>

      <tr style="height: 100%">
        <td style="height: 100%">
          <table style="height: 100%; width: 100%">
            <tr style="height: 100%">
              <td style="width: 171px; vertical-align: top" id="left-space">
                <div id="menu">
                  <div style="margin-bottom: 15px">
                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">index</xsl:with-param>
                    <xsl:with-param name="text">Home</xsl:with-param>
                    <xsl:with-param name="section">home</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">download</xsl:with-param>
                    <xsl:with-param name="text">Download</xsl:with-param>
                    <xsl:with-param name="section">download</xsl:with-param>
                    <xsl:with-param name="class">hot</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">documentation</xsl:with-param>
                    <xsl:with-param name="text">Documentation</xsl:with-param>
                    <xsl:with-param name="section">documentation</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">faq</xsl:with-param>
                    <xsl:with-param name="text">FAQ</xsl:with-param>
                    <xsl:with-param name="section">faq</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">forum</xsl:with-param>
                    <xsl:with-param name="text">Forum</xsl:with-param>
                    <xsl:with-param name="section">forum</xsl:with-param>
                  </xsl:call-template>
                  </div>

                  <div style="margin-bottom: 15px">
                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">source-code</xsl:with-param>
                    <xsl:with-param name="text">Source Code</xsl:with-param>
                    <xsl:with-param name="section">source</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">license</xsl:with-param>
                    <xsl:with-param name="text">License</xsl:with-param>
                    <xsl:with-param name="section">license</xsl:with-param>
                  </xsl:call-template>
                  </div>

                  <div style="margin-bottom: 15px">
                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">algorithms</xsl:with-param>
                    <xsl:with-param name="text">Algorithms</xsl:with-param>
                    <xsl:with-param name="section">algorithms</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">publications</xsl:with-param>
                    <xsl:with-param name="text">Publications</xsl:with-param>
                    <xsl:with-param name="section">publications</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">applications</xsl:with-param>
                    <xsl:with-param name="text">Powered by C<sup>2</sup></xsl:with-param>
                    <xsl:with-param name="section">applications</xsl:with-param>
                  </xsl:call-template>
                  </div>

                  <div style="margin-bottom: 15px">
                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">contact</xsl:with-param>
                    <xsl:with-param name="text">Contact us</xsl:with-param>
                    <xsl:with-param name="section">support</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">authors</xsl:with-param>
                    <xsl:with-param name="text">Authors</xsl:with-param>
                    <xsl:with-param name="section">authors</xsl:with-param>
                  </xsl:call-template>

                  <xsl:call-template name="menu-link">
                    <xsl:with-param name="url">spin-off</xsl:with-param>
                    <xsl:with-param name="text">Spin-off</xsl:with-param>
                    <xsl:with-param name="section">spin-off</xsl:with-param>
                  </xsl:call-template>

                  <a href="http://labs.carrotsearch.com">
                    <img alt="bullet" src="img/menu-bullet.gif" class="menu-bullet" />&#160;Labs
                  </a>
                  </div>
                </div>
              </td>

              <td id="content">
                <div style="" id="content-inner">
                  <xsl:apply-templates select="content" />
                </div>
              </td>
            </tr>
          </table>
        </td>
      </tr>

      <tr>
        <td>
          <table style="width: 100%">
            <tr>
              <td id="bottom-stroke-bg"></td>
              <td id="bottom-stroke-1"><img alt="..." src="img/bottom-stroke-1.gif" /></td>
            </tr>
            
            <tr>
              <td id="copyright" colspan="2">
              <a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="img/css.gif" alt="Valid CSS" title="Valid CSS" class="valid" /></a>
              <a href="http://validator.w3.org/check?uri=referer"><img src="img/xhtml.gif" alt="Valid XMLT 1.0 Transitional" title="Valid XMLT 1.0 Transitional" class="valid" /></a>
              &#169; 2002-<xsl:value-of select="$copyright.year" />&#160;<a href="http://stanislaw.osinski.name">Stanislaw Osinski</a>, <a href="http://www.cs.put.poznan.pl/dweiss/">Dawid Weiss</a><xsl:if test="$build.time">, updated:
                <xsl:value-of select="$build.time" />
              </xsl:if>
              </td>  
            </tr>
          </table>
        </td>
      </tr>
    </table>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-317750-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>
  </body>
</html>
  </xsl:template>

  <xsl:template name="menu-link">
    <xsl:param name="url" />
    <xsl:param name="text" />
    <xsl:param name="section" />
    <xsl:param name="class" />

    <a href="{$url}.{$content-extension}">
      <xsl:if test="(/page/@section = $section) or string-length($class) > 0">
        <xsl:attribute name="class"><xsl:if test="/page/@section = $section">active </xsl:if>
        <xsl:value-of select="$class" /></xsl:attribute>
      </xsl:if>
      <img alt="bullet" src="img/menu-bullet.gif" class="menu-bullet" />&#160;<xsl:value-of select="$text" />
    </a>
  </xsl:template>

  <xsl:template match="a[@content]">
    <xsl:choose>
      <xsl:when test="@anchor">
        <a href="{@content}.{$content-extension}#{@anchor}">
          <xsl:copy-of select="@id" />
          <xsl:copy-of select="@class" />
          <xsl:copy-of select="@target" />
          <xsl:apply-templates />
        </a>
      </xsl:when>
      <xsl:otherwise>
        <a href="{@content}.{$content-extension}">
          <xsl:copy-of select="@id" />
          <xsl:copy-of select="@class" />
          <xsl:copy-of select="@target" />
          <xsl:apply-templates />
        </a>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="title" />

  <!-- Certain HTML elements -->
  <xsl:template match="p|table|caption|tr|th|td|a|b|i|ul|ol|br|img|div|select|option|span|li|form|script|h1|h2|h3|sup|pre|script|textarea|input|dl|dt|dd|strong|hr|meta|link|small">
    <xsl:copy>
      <xsl:copy-of select="@*" />
      <xsl:apply-templates />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
