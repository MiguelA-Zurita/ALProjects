page 50100 "Ficha Usuario"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = usuario;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Id; Rec.Id)
                {
                    Editable = false;
                }
                field("Nombre Completo"; Rec."Nombre Completo")
                {

                }
                field(Genero; Rec.Genero)
                {

                }

                field(Correo; Rec.Correo)
                {
                }
                field(telefono; Rec.telefono)
                {

                }
                field("Fecha Nacimiento"; Rec."Fecha Nacimiento")
                {

                }
                field(Contrasena; Rec.Contrasena)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}