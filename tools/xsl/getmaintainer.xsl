<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:output method="text"/>

<xsl:template match="/">
  <xsl:value-of select="TEI.2/teiHeader/fileDesc/titleStmt/respStmt/name[../resp = 'Maintainer']"/>
</xsl:template>

</xsl:stylesheet>

