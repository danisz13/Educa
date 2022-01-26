table 50105 Claustro
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo profesor"; Code[2])
        {
            NotBlank = true;
            Numeric = true;
        }
        field(2; Nombre; Text[30])
        {
            NotBlank = true;
        }
        field(3; Direccion; Text[50]) { }
        field(4; "Fecha contratacion"; Date) { }
        field(5; "Numero ayudantes"; Integer)
        {
            InitValue = 0;
            MinValue = 0;
        }
        field(6; Sueldo; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 0 : 2;
        }



    }


    keys
    {
        key(PK; "Codigo profesor")
        {
            Clustered = true;
        }
        key("Nombre y Direccion"; Nombre, Direccion) { }
        key("Fecha Contratacion"; "Fecha contratacion") { }
        key(Sueldo; Sueldo) { }
    }


}