/// 
Class public.pmuserdata Extends %Persistent [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = pm_user_data ]
{

Property userid As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 2, SqlFieldName = user_id ];

Property fullname As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 3, SqlFieldName = full_name ];

Property password As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 4 ];

Property email As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 5 ];

Property projectpath As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 6, SqlFieldName = project_path ];

Property changedate As %Library.TimeStamp [ SqlColumnNumber = 7, SqlFieldName = change_date ];

Property entrydate As %Library.TimeStamp [ SqlColumnNumber = 8, SqlFieldName = entry_date ];

Property changebychar As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 9, SqlFieldName = changeby_char ];

Property statuscd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 10, SqlFieldName = status_cd ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

/// DDL Primary Key Specification
Index pmuserdatapkey On userid [ PrimaryKey, SqlName = pm_user_data_pkey, Type = index, Unique ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="pmuserdataDefaultData">
<Value name="1">
<Value>userid</Value>
</Value>
<Value name="2">
<Value>fullname</Value>
</Value>
<Value name="3">
<Value>password</Value>
</Value>
<Value name="4">
<Value>email</Value>
</Value>
<Value name="5">
<Value>projectpath</Value>
</Value>
<Value name="6">
<Value>changedate</Value>
</Value>
<Value name="7">
<Value>entrydate</Value>
</Value>
<Value name="8">
<Value>changebychar</Value>
</Value>
<Value name="9">
<Value>statuscd</Value>
</Value>
</Data>
<DataLocation>^B5ms.DvHI.1</DataLocation>
<DefaultData>pmuserdataDefaultData</DefaultData>
<ExtentLocation>^B5ms.DvHI</ExtentLocation>
<IdFunction>sequence</IdFunction>
<IdLocation>^B5ms.DvHI.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^B5ms.DvHI.2</Location>
</Index>
<Index name="IDKEY">
<Location>^B5ms.DvHI.1</Location>
</Index>
<Index name="pmuserdatapkey">
<Location>^B5ms.DvHI.3</Location>
</Index>
<IndexLocation>^B5ms.DvHI.I</IndexLocation>
<StreamLocation>^B5ms.DvHI.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}