<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<testsuites>
			<xsl:for-each select=".//fixture">
				<xsl:variable name="className" select="@name" />
				<testsuite skipped="{counter/@skip-count + counter/@ignore-count}" failures="{counter/@failure-count}" errors="{count/@failure-count}"
					time="{counter/@duration}" tests="{counter/@run-count}" name="{@type}">
					<xsl:for-each select="runs/run[@result != 'ignore']">
						<testcase classname="{$className}" name="{@name}" time="{@duration}">
							<xsl:if test="@result = 'failure'">
								<failure type="{exception/@type}" message="{exception/message}">
									<xsl:value-of select="exception/stack-trace"/>
								</failure>
							</xsl:if>
						</testcase>
					</xsl:for-each>
				</testsuite>
			</xsl:for-each>
		</testsuites>
	</xsl:template>
</xsl:stylesheet>