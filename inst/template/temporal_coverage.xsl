<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="temporal_coverage" match="/">

        <!-- If there is a rangeOfDates node, create a table of the values -->
        <xsl:if test="//dataset/coverage/temporalCoverage/rangeOfDates">
            <table class="table table-striped">
                <tr>
                    <th>Start date</th>
                    <th>End date</th>
                </tr>
                <xsl:for-each select="//dataset/coverage/temporalCoverage/rangeOfDates">
                    <tr>
                        <td><xsl:value-of select="beginDate/calendarDate"/></td>
                        <td><xsl:value-of select="endDate/calendarDate"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </xsl:if>

        <!-- If there is a singleDateTime node, create a table of the values -->
        <xsl:if test="//dataset/coverage/temporalCoverage/singleDateTime">
            <table class="table table-striped">
                <tr>
                    <th>Date</th>
                </tr>
                <xsl:for-each select="//dataset/coverage/temporalCoverage/singleDateTime">
                    <tr>
                        <td><xsl:value-of select="calendarDate"/></td>
                    </tr>
                </xsl:for-each>    
            </table>
        </xsl:if>
        
    </xsl:template>
</xsl:stylesheet>

