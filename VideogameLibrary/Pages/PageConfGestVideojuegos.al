page 50102 "Conf Gest Videojuegos"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Config Gest Videojuegos";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Serie usuarios"; Rec."Serie usuarios")
                {

                }

                field("Serie videojuegos"; Rec."Serie Videojuegos")
                {

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end
    end;
}