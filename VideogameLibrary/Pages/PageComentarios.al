page 50106 "Ficha Comentarios"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Comentarios;
    Editable = true;
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Id; Rec.Id)
                {

                }
                field(Usuario; Rec.Usuario)
                {

                }
                field(Videojuego; Rec.Videojuego)
                {

                }
                field(Comentario; Rec.Comentario)
                {

                }
                field(Estrellas; Rec.Estrellas)
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