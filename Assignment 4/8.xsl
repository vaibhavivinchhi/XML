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
							
							<xsl:for-each select="student_det/student">
								<tr>
									<td><xsl:value-of select="rollno"/></td>
									<td><xsl:value-of select="name"/></td>
									<td><xsl:value-of select="marks"/></td>
									<td><xsl:value-of select="rank"/></td>
									
									<xsl:choose>
										<xsl:when test="marks &gt; 70">
											<td>Distinction</td>
										</xsl:when>
										<xsl:when test="marks &gt; 60 and marks &lt; 70">
											<td>first class</td>
										</xsl:when>
										<xsl:when test="marks &gt; 40 and marks &lt; 60">
											<td>second class</td>
										</xsl:when>
										<xsl:otherwise>
											<td bgcolor="red">Fail</td>
										</xsl:otherwise>
									</xsl:choose>
								</tr>
							</xsl:for-each>							
						</tr>
					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>