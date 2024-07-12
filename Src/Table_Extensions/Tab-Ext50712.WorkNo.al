tableextension 50712 "WorkNo" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50712; "Work No."; code[20])
        {
            DataClassification = ToBeClassified;
            Tablerelation = "No. Series";
        }
        field(50715; "Line_No."; code[20])
        {
            DataClassification = ToBeClassified;
            Tablerelation = "No. Series";
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}