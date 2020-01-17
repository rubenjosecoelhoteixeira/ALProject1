tableextension 50100 CustomerBookExtension extends Customer
{
    fields
    {
        field(50300; "Favorite Book No."; Code[20])
        {
            Caption = 'Favorite Book No.';
            TableRelation = Book."No.";
            DataClassification = ToBeClassified;
        }
    }
    trigger OnAfterInsert()
    var
        CustomerCode: Codeunit CustomerCode;
    begin
        CustomerCode.CelebrateCustomer(Rec, 'Congratulations from the Table Extension!!!');
    end;
}