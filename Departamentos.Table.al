table 50101 Departamentos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Dept."; Code[4])
        {
            NotBlank = true;
            ValuesAllowed = 'AZ';

        }
        field(2; Edificio; Text[2])
        {
            ValuesAllowed = 'AZ';
        }
        field(3; Despacho; Integer)
        {
            InitValue = 0;
            MinValue = 0;
        }
        field(4; "Codigo Director"; Code[2])
        {
            TableRelation = Claustro."Codigo profesor";
        }
    }

    keys
    {
        key(PK; "Codigo Dept.")
        {
            Clustered = true;
        }
        key(Despacho; Despacho) { }
        key("Codigo Director"; "Codigo Director") { }
    }



}