table 50102 "Config Gest Videojuegos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary key"; Code[10])
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;

        }
        field(2; "Serie Usuarios"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Serie Usuarios';
            TableRelation = "No. Series";
        }

        field(3; "Serie Videojuegos"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Serie Videojuegos';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Primary key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}