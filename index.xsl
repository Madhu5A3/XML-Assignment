<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <body>
        <h2>My Expenses</h2>
        <table border="2">
            <tr bgcolor="#9acd32">
                <th>Category</th>
                <th>Amount</th>
                <th>Description</th>
            </tr>
            <xsl:for-each select="expenses/expense">
            <xsl:sort select="category" />
                <tr>
                    <td><xsl:value-of select="category" /></td>
                    <td><xsl:value-of select="amount" /></td>
                    <td><xsl:value-of select="description" /></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>