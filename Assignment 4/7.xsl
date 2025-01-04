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
							<tr>
								<td><xsl:value-of select="rollno"/></td>
								<td><xsl:value-of select="name"/></td>
								<td><xsl:value-of select="marks"/></td>
								<td><xsl:value-of select="rank"/></td>
								
								<xsl:choose>
									<xsl:when test="rank &lt; 5">
										<td bgcolor="yellow">Top students</td>
									</xsl:when>
									<xsl:when test="rank &gt; 5 and rank &lt; 10">
										<td>Top 10 students</td>
									</xsl:when>
									<xsl:otherwise>
										<td>Average student</td>
									</xsl:otherwise>
								</xsl:choose>
							</tr>
						</xsl:for-each>
					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>