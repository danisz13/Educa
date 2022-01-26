table 50100 Cursos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Curso"; Code[3])
        {
            NotBlank = true;
            CharAllowed = 'AZ09';
        }
        field(2; "Nombre Curso"; Text[30])
        {
            NotBlank = true;
        }
        field(3; "Desc. Curso"; Text[30]) { }
        field(4; Creditos; Integer)
        {
            InitValue = 0;
        }
        field(5; Tarifa; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(6; "Codigo Dept."; Code[4])
        {
            TableRelation = Departamentos."Codigo Dept.";
        }
    }

    keys
    {
        key(PK; "Codigo Curso")
        {
            Clustered = true;
        }
        key("Nombre Curso"; "Nombre Curso") { }
        key("Desc. Curso"; "Desc. Curso") { }
    }

}