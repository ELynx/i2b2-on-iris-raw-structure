Class I2B2.Utils [ Abstract, Language = objectscript ]
{

/// d ##class(I2B2.Utils).initNextvalValues()
ClassMethod initNextvalValues()
{
	s ^I2B2.Utils.NEXTVAL("qt_xml_result_xml_result_id_seq")=$o(^B5ms.BH3z.3(""),-1)+1
	s ^I2B2.Utils.NEXTVAL("qt_query_instance_query_instance_id_seq")=$o(^B5ms.EFUS.3(""),-1)+1
	s ^I2B2.Utils.NEXTVAL("qt_query_master_query_master_id_seq")=$o(^B5ms.CI7d.3(""),-1)+1
	s ^I2B2.Utils.NEXTVAL("qt_pdo_query_master_query_master_id_seq")=$o(^B5ms.Bhao.3(""),-1)+1
	s ^I2B2.Utils.NEXTVAL("qt_query_result_instance_result_instance_id_seq")=$o(^B5ms.E6AR.3(""),-1)+1
}

ClassMethod nextval(key As %String) As %Integer [ SqlProc ]
{
	q $i(^I2B2.Utils.NEXTVAL(key))
}

}

