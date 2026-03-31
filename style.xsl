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
				<h1>Medicine Collection</h1>

				<h2>Medicines</h2>
				<table>
					<tr>
						<th>Thumbnail</th>
						<th>Name</th>
						<th>Description</th>
						<th>Ingredients</th>
						<th>Method Of Administration</th>
						<th>Dosage</th>
						<th>Price</th>
						<th>In-Stock</th>
						<th>Manufacturer</th>
						<th>Type</th>
					</tr>
					<xsl:for-each select="products/medicines/medicine">
						<tr>
                			<td><img src="{normalize-space(thumbnail)}"/></td>
                			<td><xsl:value-of select="name"/></td>
                			<td><xsl:value-of select="description"/></td>
							<td>
							    <xsl:for-each select="ingredients/ingredient">
							        <xsl:value-of select="."/>
							        <xsl:if test="position() != last()">
							            <xsl:text>, </xsl:text>
							        </xsl:if>
							    </xsl:for-each>
							</td>
                			<td><xsl:value-of select="name(method_of_administration/*)"/></td>
                			<td><xsl:value-of select="dosage"/></td>
                			<td><xsl:value-of select="price"/></td>
                			<td><xsl:value-of select="name(in_stock/*)"/></td>
                			<td><xsl:value-of select="manufacturer"/></td>
                			<td><xsl:value-of select="name(type/*)"/></td>
						</tr>
					</xsl:for-each>
				</table>

				<h2>Medical device</h2>
				<table>
					<tr>
						<th>Thumbnail</th>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
						<th>In-Stock</th>
						<th>Manufacturer</th>
					</tr>
					<xsl:for-each select="products/medical_devices/medical_device">
						<tr>
                			<td><img src="{normalize-space(thumbnail)}"/></td>
                			<td><xsl:value-of select="name"/></td>
                			<td><xsl:value-of select="description"/></td>
                			<td><xsl:value-of select="price"/></td>
                			<td><xsl:value-of select="name(in_stock/*)"/></td>
                			<td><xsl:value-of select="manufacturer"/></td>
						</tr>
					</xsl:for-each>
				</table>

				<h2>Other</h2>
				<table>
					<tr>
						<th>Thumbnail</th>
						<th>Name</th>
						<th>Description</th>
						<th>Ingredients</th>
						<th>Method Of Administration</th>
						<th>Dosage</th>
						<th>Price</th>
						<th>In-Stock</th>
						<th>Manufacturer</th>
						<th>Type</th>
					</tr>
					<xsl:for-each select="products/others/other">
						<tr>
                			<td><img src="{normalize-space(thumbnail)}"/></td>
                			<td><xsl:value-of select="name"/></td>
                			<td><xsl:value-of select="description"/></td>
							<td>
							    <xsl:for-each select="ingredients/ingredient">
							        <xsl:value-of select="."/>
							        <xsl:if test="position() != last()">
							            <xsl:text>, </xsl:text>
							        </xsl:if>
							    </xsl:for-each>
							</td>
                			<td><xsl:value-of select="name(method_of_administration/*)"/></td>
                			<td><xsl:value-of select="dosage"/></td>
                			<td><xsl:value-of select="price"/></td>
                			<td><xsl:value-of select="name(in_stock/*)"/></td>
                			<td><xsl:value-of select="manufacturer"/></td>
                			<td><xsl:value-of select="name(type/*)"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 
