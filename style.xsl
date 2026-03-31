<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
    			<style>
    			    th {
						background-color: red;
					}
    			</style>
			</head>
			<body>
				<h2>Medicine Collection</h2>
				<xsl:for-each select="products/*">
					<table>
						<tr>
							<xsl:for-each select="*[1]/*">
								<th><xsl:value-of select="name()"/></th>
							</xsl:for-each>
						</tr>
						<xsl:for-each select="./*">
							<tr>
								<xsl:for-each select="*">
									<td>
										<xsl:choose>
											<xsl:when test="*">
												<xsl:value-of select="name(*)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="."/>
											</xsl:otherwise>
										</xsl:choose>
									</td>
								</xsl:for-each>
							</tr>
						</xsl:for-each>
					</table>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 
