table 50104 Matriculas
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo curso"; Code[3])
        {
            TableRelation = Cursos."Codigo Curso";
            NotBlank = true;
            Numeric = true;

        }
        field(2; Seccion; Text[2])
        {
            TableRelation = Clases.Seccion;
            NotBlank = true;
            Numeric = true;
        }
        field(3; "Codigo estudiante"; Code[3])
        {
            TableRelation = Estudiantes."Codigo Estudiante";
            NotBlank = true;
            Numeric = true;
        }
        field(4; "Fecha matricula"; Date) { }
        field(5; "Hora matricula"; Time) { }



    }


    keys
    {
        key(PK; "Codigo curso", Seccion, "Codigo estudiante")
        {
            Clustered = true;
        }
        key("Fecha y Hora Matricula"; "Fecha matricula", "Hora matricula") { }
        key(Seccion; Seccion) { }
        key("Codigo Estudiante"; "Codigo estudiante") { }
        key("Codigo Curso"; "Codigo curso") { }
    }

}