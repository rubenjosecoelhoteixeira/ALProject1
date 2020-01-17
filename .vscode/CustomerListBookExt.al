pageextension 50102 CustomerListBookExtension extends "Customer List"
{
    layout
    {
        modify("Location Code")
        {
            Visible = false;
        }
        addafter(Name)
        {
            field("Chain Name"; "Chain Name")
            {
                ApplicationArea = All;
            }
        }
    }
}