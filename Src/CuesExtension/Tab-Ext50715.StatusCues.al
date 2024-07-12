tableextension 50715 StatusCues extends "Activities Cue"
{
    fields
    {
        field(55; "No.Of Open Jobs"; Integer)
        {
            Caption = 'No.of Open Jobs ';
            FieldClass = FlowField;
            CalcFormula = count("Item Models Main" where("Status" = filter(Open)));
        }
        field(57; "No.Of Jobs in Process"; Integer)
        {
            Caption = 'No.of Jobs in Process';
            FieldClass = FlowField;
            CalcFormula = count("Item Models Main" Where("Status" = filter(Process)));
        }

        field(56; "No.Of Completed Jobs"; Integer)
        {
            Caption = 'No.of Completed Jobs';
            FieldClass = FlowField;
            CalcFormula = count("Item Models Main" Where("Status" = filter(Completed)));
        }

    }
}