<?xml version="1.0"?>
	<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
		<xsl:template match="/">
			<html>
				<body>
					<table border="1">
						<tr>
							<th>BOOK</th>
							<th>title</th>
							<th>Author</th>
							<th>Year</th>
							<th>Publisher</th>
						</tr>
						<xsl:for-each select="Books/book_det">
							<xsl:if test="year &lt; 1998">
								<tr>
									<td><xsl:value-of select="book"/></td>
									<td><xsl:value-of select="book/@title"/></td>
									<td><xsl:value-of select="author"/></td>
									<td><xsl:value-of select="year"/></td>
									<td><xsl:value-of select="publisher"/></td>
								</tr>
							</xsl:if>
						</xsl:for-each>
					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>
