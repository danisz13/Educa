table 50103 Estudiantes
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Estudiante"; Code[3])
        {
            Numeric = true;
            NotBlank = true;
        }
        field(2; Nombre; Text[30])
        {
            NotBlank = true;
        }
        field(3; Sexo; Enum Sexo) { }
        field(4; Direccion; Text[50]) { }
        field(5; Telefono; Text[9])
        {
            Numeric = true;
        }
        field(6; "Fecha Nac."; Date) { }
        field(7; "Codigo Tutor"; Code[2])
        {
            TableRelation = Claustro."Codigo profesor";
        }
    }

    keys
    {
        key(PK; "Codigo Estudiante")
        {
            Clustered = true;
        }
        key(Nombre; Nombre) { }
        key(Direccion; Direccion) { }
        key(Telefono; Telefono) { }
        key("Codigo Tutor"; "Codigo Tutor") { }
    }


}