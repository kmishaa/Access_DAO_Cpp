#import <C:\Program Files (x86)\Common Files\Microsoft Shared\DAO\acedao.dll> rename( "EOF", "AdoNSEOF" )
int main()
{
    CoInitialize(NULL);
    DAO::DatabasePtr dbase;
    DAO::_TableDefPtr tblNew;
    DAO::_FieldPtr fldNew;
    DAO::_DBEnginePtr Dbe(__uuidof(DAO::DBEngine));
    //dbase = Dbe->CreateDatabase("C:\\DB\\CPP\\LR1.5_Krasovitsky.accdb", DAO::dbLangCyrillic);
    dbase = Dbe->CreateDatabase("C:\\DB\\CPP\\LR1.5_Krasovitsky.accdb", DAO::dbLangCyrillic, _variant_t((short)DAO::dbVersion120));
    tblNew = dbase->CreateTableDef(_variant_t("Students"));
    tblNew->Fields->Append(tblNew->CreateField(_variant_t("ID"), _variant_t((short)DAO::dbInteger)));
    tblNew->Fields->Append(tblNew->CreateField(_variant_t("Name"), _variant_t((short)DAO::dbText), _variant_t((short)20)));
    tblNew->Fields->Append(tblNew->CreateField(_variant_t("Surname"), _variant_t((short)DAO::dbText), _variant_t((short)20)));
    tblNew->Fields->Append(tblNew->CreateField(_variant_t("Age"), _variant_t((short)DAO::dbInteger)));
    dbase->TableDefs->Append(_variant_t((IDispatch*)tblNew));
    printf("Done with success!");
    dbase->Close();
    dbase = NULL;
    tblNew = NULL;
}