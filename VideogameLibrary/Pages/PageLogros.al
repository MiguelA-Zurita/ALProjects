page 50107 Logros
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Logros;
    Editable = true;
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Usuario; Rec.Usuario)
                {

                }
                field(Videojuego; Rec.Videojuego)
                {

                }
                field(Logro; Rec.Logro)
                {

                }
                field("Fecha adquisicion"; Rec."Fecha adquisicion")
                {
                    Editable = false;
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