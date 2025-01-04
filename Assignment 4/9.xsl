<?xml version="1.0"?>
	<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
		<xsl:template match="/">
			<html>
				<body>
					<table border="1">
						<tr>
							<td>Roll number</td>
							<td>Name</td>
							<td>Marks</td>
							<td>Rank</td>
						</tr>
						<xsl:for-each select="email/student">
							<xsl:if test="starts-with(rollno,'1')">
							<tr>
								<td><xsl:value-of select="rollno"/></td>
								<td><xsl:value-of select="name"/></td>
								<td><xsl:value-of select="marks"/></td>
								<td><xsl:value-of select="rank"/></td>
							</tr>
							</xsl:if>
						</xsl:for-each>
					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>