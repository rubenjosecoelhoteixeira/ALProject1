codeunit 50101 InstallCode
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertBook('0001', 'Rock your Guitar', 'Leo Blender', 450);
        InsertBook('0002', 'Bass in 5 minutes a Day', 'Bette Treble', 227);
    end;

    local procedure InsertBook(BookNo: Code[20]; BookTitle: Text; BookAuthor: Text; BookPageCount: Integer)
    var
        Book: Record Book;
    begin
        with Book do begin
            if get(BookNo) then
                exit;

            "No." := BookNo;
            Author := BookAuthor;
            Hardcover := true;
            Title := BookTitle;
            "Page Count" := BookPageCount;

            Insert;
        end;
    end;
}