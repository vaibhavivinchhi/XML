<?xml version="1.0"?>
	<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
		<xsl:template match="/">
		<html>
			<body>
				<h1>Student Details</h1>
				<table border="1">
					<tr>
						<th>Student Name</th>
						<th>Personal Info
							<table border="1">
								<tr>
									<th>Address</th>
									<th>Birthdate</th>
									<th>Gender</th>
									<th>Mobile Number</th>
								</tr>
							</table>
						</th>
						<th>Result</th>
					</tr>
					<xsl:for-each select="student/student_det">
						<xsl:sort select="student_name" order="ascending"/>
						<tr>
							<td><xsl:value-of select="student_name"/></td>
							<td><xsl:value-of select="personal_info"/></td>
							<td><xsl:value-of select="result"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
		</xsl:template>
		<xsl:template match="student/student_det/personal_info">
			<html>
				<body>
					<table border="1">
						<tr>
							<th>Address</th>
							<th>Birthdate</th>
							<th>Gender</th>
							<th>Mobile Number</th>
						</tr>
						<xsl:for-each select="student/student_det/personal_info">
							<tr>
								<td><xsl:value-of select="address"/></td>
								<td><xsl:value-of select="birthdate"/></td>
								<td><xsl:value-of select="gender"/></td>
								<td><xsl:value-of select="mobileno"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>