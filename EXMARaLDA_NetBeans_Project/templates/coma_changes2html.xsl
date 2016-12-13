<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:template match="/">
		<html>
			<head>
				<title>EXMARaLDA changes</title>
				<style type="text/css">
						tr, th {						
						font-family: "Courier New", Courier, monospace;
						font-size: 11px;
						}
										
						.bug {
						background-color: #FFCCCC;
						}
						.feature {
						background-color: #99DDFF;
						}
						.change {
						background-color: #CCCCCC;
						}
					
				</style>
			</head>
			<body>
				<h1>Coma changes</h1>
				<xsl:for-each-group select="//change[@tool='coma']" group-by="@tool">

					<table rules="all" frame="box" width="600px">

						<tr>
							<th>Date</th>
							<th>Version</th>
							<th>Change (<span class="bug">bug</span>;<span class="feature">feature</span>;<span class="change">change</span>)</th>
						</tr>
						<xsl:for-each select="current-group()">
							<tr>
								<xsl:attribute name="class">
									<xsl:value-of select="@type"/>
								</xsl:attribute>

								<td>
									<xsl:value-of select="@date"/>
								</td>
								<td>
									<xsl:value-of select="@version"/>
								</td>
								<td>
									<xsl:value-of select="text()"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each-group>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>