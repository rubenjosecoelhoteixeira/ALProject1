pageextension 50500 CustomerCardExtension extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favorite Book No."; "Favorite Book No.")
            {
                ApplicationArea = All;
            }
        }
    }
}