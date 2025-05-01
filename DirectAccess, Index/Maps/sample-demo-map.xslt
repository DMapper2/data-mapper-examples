<xsl:stylesheet xmlns:ns0="http://tempuri.org/Target.xsd" xmlns:td="http://tempuri.org/TypeDefinition.xsd" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns0_0="http://tempuri.org/source.xsd" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dm="http://azure.workflow.datamapper" xmlns:ef="http://azure.workflow.datamapper.extensions" exclude-result-prefixes="xsl xs math dm ef ns0_0" version="3.0" expand-text="yes">
  <xsl:output indent="yes" media-type="text/xml" method="xml" />
  <xsl:template match="/">
    <xsl:apply-templates select="." mode="azure.workflow.datamapper" />
  </xsl:template>
  <xsl:template match="/" mode="azure.workflow.datamapper">
    <ns0:Root>
      <Looping>
        <Trips>
          <xsl:for-each select="/ns0_0:Root/Looping/VehicleTrips/Trips">
            <xsl:variable name="_a" select="position()" />
            <Trip>
              <VehicleRegistration>{concat(/ns0_0:Root/Looping/VehicleTrips/Vehicle[$_a]/VehicleRegistration, VehicleId)}</VehicleRegistration>
              <Distance>{string(Distance)}</Distance>
              <Duration>{string(Duration)}</Duration>
            </Trip>
          </xsl:for-each>
        </Trips>
      </Looping>
    </ns0:Root>
  </xsl:template>
</xsl:stylesheet>