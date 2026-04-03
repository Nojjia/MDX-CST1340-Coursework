<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
    <title>Bookshop - Our Collection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f0eb;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #5c3d2e;
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        h2 {
            color: #5c3d2e;
            border-bottom: 2px solid #5c3d2e;
            padding-bottom: 5px;
            margin-top: 40px;
        }

        a {
            display: block;
            text-align: center;
            margin-bottom: 30px;
            color: #5c3d2e;
            font-weight: bold;
            text-decoration: none;
            font-size: 1.1em;
        }

        a:hover {
            text-decoration: underline;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th {
            background-color: #5c3d2e;
            color: white;
            padding: 12px 15px;
            text-align: left;
        }

        td {
            padding: 10px 15px;
            border-bottom: 1px solid #e0d6cc;
            vertical-align: top;
        }

        tr:last-child td {
            border-bottom: none;
        }

        tr:hover {
            background-color: #f9f3ee;
        }

        .in-stock-yes {
            color: green;
            font-weight: bold;
        }

        .in-stock-no {
            color: red;
            font-weight: bold;
        }

        .price {
            font-weight: bold;
            color: #5c3d2e;
        }

        .category-section {
            margin-bottom: 40px;
        }
    </style>
</head>
<body>

    <h1>📚 Our Book Collection</h1>
    <a href="index.html">← Back to Home</a>

    <!-- ========== FANTASY ========== -->
    <div class="category-section">
        <h2>🧙 Fantasy</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Author(s)</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Price</th>
                <th>In Stock</th>
            </tr>
            <xsl:for-each select="products/books/book[category='Fantasy']">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                    <xsl:for-each select="authors/author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
                <td><xsl:value-of select="publisher"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="pages"/></td>
                <td class="price">£<xsl:value-of select="price"/></td>
                <td>
                    <xsl:if test="in_stock/yes">
                        <span class="in-stock-yes">✔ Yes</span>
                    </xsl:if>
                    <xsl:if test="in_stock/no">
                        <span class="in-stock-no">✘ No</span>
                    </xsl:if>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

    <!-- ========== SCIENCE FICTION ========== -->
    <div class="category-section">
        <h2>🚀 Science Fiction</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Author(s)</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Price</th>
                <th>In Stock</th>
            </tr>
            <xsl:for-each select="products/books/book[category='Science Fiction']">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                    <xsl:for-each select="authors/author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
                <td><xsl:value-of select="publisher"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="pages"/></td>
                <td class="price">£<xsl:value-of select="price"/></td>
                <td>
                    <xsl:if test="in_stock/yes">
                        <span class="in-stock-yes">✔ Yes</span>
                    </xsl:if>
                    <xsl:if test="in_stock/no">
                        <span class="in-stock-no">✘ No</span>
                    </xsl:if>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

    <!-- ========== CLASSIC FICTION ========== -->
    <div class="category-section">
        <h2>📖 Classic Fiction</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Author(s)</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Price</th>
                <th>In Stock</th>
            </tr>
            <xsl:for-each select="products/books/book[category='Classic Fiction']">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                    <xsl:for-each select="authors/author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
                <td><xsl:value-of select="publisher"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="pages"/></td>
                <td class="price">£<xsl:value-of select="price"/></td>
                <td>
                    <xsl:if test="in_stock/yes">
                        <span class="in-stock-yes">✔ Yes</span>
                    </xsl:if>
                    <xsl:if test="in_stock/no">
                        <span class="in-stock-no">✘ No</span>
                    </xsl:if>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

    <!-- ========== NON-FICTION ========== -->
    <div class="category-section">
        <h2>🌍 Non-Fiction</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Author(s)</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Price</th>
                <th>In Stock</th>
            </tr>
            <xsl:for-each select="products/books/book[category='Non-Fiction']">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                    <xsl:for-each select="authors/author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
                <td><xsl:value-of select="publisher"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="pages"/></td>
                <td class="price">£<xsl:value-of select="price"/></td>
                <td>
                    <xsl:if test="in_stock/yes">
                        <span class="in-stock-yes">✔ Yes</span>
                    </xsl:if>
                    <xsl:if test="in_stock/no">
                        <span class="in-stock-no">✘ No</span>
                    </xsl:if>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

    <!-- ========== SELF-HELP ========== -->
    <div class="category-section">
        <h2>💪 Self-Help</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Author(s)</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Price</th>
                <th>In Stock</th>
            </tr>
            <xsl:for-each select="products/books/book[category='Self-Help']">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                    <xsl:for-each select="authors/author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
                <td><xsl:value-of select="publisher"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="pages"/></td>
                <td class="price">£<xsl:value-of select="price"/></td>
                <td>
                    <xsl:if test="in_stock/yes">
                        <span class="in-stock-yes">✔ Yes</span>
                    </xsl:if>
                    <xsl:if test="in_stock/no">
                        <span class="in-stock-no">✘ No</span>
                    </xsl:if>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

    <!-- ========== MYSTERY ========== -->
    <div class="category-section">
        <h2>🔍 Mystery</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Author(s)</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Price</th>
                <th>In Stock</th>
            </tr>
            <xsl:for-each select="products/books/book[category='Mystery']">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                    <xsl:for-each select="authors/author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
                <td><xsl:value-of select="publisher"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="pages"/></td>
                <td class="price">£<xsl:value-of select="price"/></td>
                <td>
                    <xsl:if test="in_stock/yes">
                        <span class="in-stock-yes">✔ Yes</span>
                    </xsl:if>
                    <xsl:if test="in_stock/no">
                        <span class="in-stock-no">✘ No</span>
                    </xsl:if>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

    <!-- ========== ROMANCE ========== -->
    <div class="category-section">
        <h2>💕 Romance</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Author(s)</th>
                <th>Publisher</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Price</th>
                <th>In Stock</th>
            </tr>
            <xsl:for-each select="products/books/book[category='Romance']">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                    <xsl:for-each select="authors/author">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
                <td><xsl:value-of select="publisher"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="pages"/></td>
                <td class="price">£<xsl:value-of select="price"/></td>
                <td>
                    <xsl:if test="in_stock/yes">
                        <span class="in-stock-yes">✔ Yes</span>
                    </xsl:if>
                    <xsl:if test="in_stock/no">
                        <span class="in-stock-no">✘ No</span>
                    </xsl:if>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

</body>
</html>
</xsl:template>

</xsl:stylesheet>
