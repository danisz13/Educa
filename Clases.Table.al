table 50102 Clases
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Curso"; Code[3])
        {
            NotBlank = true;
        }
        field(2; Seccion; Text[2])
        {
            NotBlank = true;
            Numeric = true;
        }
        field(3; Dia; Text[10]) { }
        field(4; Hora; Time) { }
        field(5; Edificio; Text[2])
        {
            ValuesAllowed = 'AZ';
        }
        field(6; Despacho; Integer)
        {
            MinValue = 0;
        }
        field(7; "Codigo Profesor"; Code[2])
        {
            TableRelation = Claustro."Codigo profesor";

        }
    }

    keys
    {
        key(PK; "Codigo Curso", Seccion)
        {
            Clustered = true;
        }
        key(Dia; Dia) { }
    }

}