table 50107 Personal
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo personal"; Code[3])
        {
            NotBlank = true;
            Numeric = true;
        }
        field(2; Nombre; Text[30])
        {
            NotBlank = true;

        }
        field(3; Cargo; Text[20]) { }
        field(4; Sueldo; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 0 : 2;
        }

    }


    keys
    {
        key(PK; "Codigo personal")
        {
            Clustered = true;
        }
        key(Nombre; Nombre) { }
        key(Cargo; Cargo) { }
    }



}