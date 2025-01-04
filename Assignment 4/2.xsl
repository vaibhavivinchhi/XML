<?xml version="1.0"?>
	<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
		<xsl:template match="/">
			<html>
				<body>
					<h1>Order Details</h1>
					<table border="1">
						<tr bgcolor="yellow">
							<th>Order Number</th>
							<th>Orderate</th>
							<th>Order Amount</th>
							<th>Item Price</th>
							<th>Item Name</th>
							<th>Quantity</th>
						</tr>
						<xsl:for-each select="order/order_det">
							<tr>
								<td><xsl:value-of select="orderNumber"/></td>
								<td><xsl:value-of select="orderate"/></td>
								<td><xsl:value-of select="orderAmount"/></td>
								<td><xsl:value-of select="itemPrice"/></td>
								<td><xsl:value-of select="itemName"/></td>
								<td><xsl:value-of select="quantity"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>