pageextension 50713 WorkNo extends "Sales & Receivables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Work No."; Rec."Work No.")
            {
                ApplicationArea = All;
                TableRelation = "No. Series";
            }
            field("Line_No."; Rec."Line_No.")
            {
                ApplicationArea = All;
                TableRelation = "No. Series";
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}

