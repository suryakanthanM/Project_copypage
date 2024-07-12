pageextension 50717 StatusCusePageExt extends "O365 Activities"
{
    layout
    {
        addafter(Control54)
        {
            cuegroup("Status Jobs")
            {
                CueGroupLayout = Wide;
                field("No.Of Open Jobs"; Rec."No.Of Open Jobs")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Item Model List";
                    ToolTip = 'This cue move you to Item Model list';

                    // trigger OnDrillDown()
                    // begin
                    // ActivitiesMgt.DrillDownSalesThisMonth();
                    // end;
                }
                field("No.Of Jobs in Process"; Rec."No.Of Jobs in Process")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Item Model List";
                    ToolTip = 'This cue move you to Item Model list';

                }
                field("No.Of Completed Jobs"; Rec."No.Of Completed Jobs")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Item Model List";
                    ToolTip = 'This cue move you to Item Model list';

                }

            }

        }

    }
}